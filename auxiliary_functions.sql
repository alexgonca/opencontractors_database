DROP FUNCTION IF EXISTS small_distinct();

CREATE OR REPLACE FUNCTION small_distinct(
   tableName varchar, fieldName varchar, sample anyelement = ''::varchar)
   RETURNS TABLE ( result anyelement ) AS
$BODY$
BEGIN
   EXECUTE 'SELECT '||fieldName||' FROM '||tableName||' ORDER BY '||fieldName
      ||' LIMIT 1'  INTO result;
   WHILE result IS NOT NULL LOOP
      RETURN NEXT;
      EXECUTE 'SELECT '||fieldName||' FROM '||tableName
         ||' WHERE '||fieldName||' > $1 ORDER BY ' || fieldName || ' LIMIT 1'
         INTO result USING result;
   END LOOP;
END;
$BODY$ LANGUAGE plpgsql VOLATILE;