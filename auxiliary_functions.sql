DROP FUNCTION IF EXISTS small_distinct();

CREATE OR REPLACE FUNCTION small_distinct(
  tableName VARCHAR, fieldName VARCHAR, sample ANYELEMENT = '' :: VARCHAR)
  RETURNS TABLE(result ANYELEMENT) AS
$BODY$
BEGIN
  EXECUTE 'SELECT ' || fieldName || ' FROM ' || tableName || ' ORDER BY ' || fieldName
          || ' LIMIT 1'
  INTO result;
  WHILE result IS NOT NULL LOOP
    RETURN NEXT;
    EXECUTE 'SELECT ' || fieldName || ' FROM ' || tableName
            || ' WHERE ' || fieldName || ' > $1 ORDER BY ' || fieldName || ' LIMIT 1'
    INTO result
    USING result;
  END LOOP;
END;
$BODY$ LANGUAGE plpgsql VOLATILE;

DROP FUNCTION IF EXISTS left_text();

CREATE OR REPLACE FUNCTION left_text(field TEXT) RETURNS TEXT AS $$
BEGIN
  IF position(':' in field) = 0 THEN
    RETURN field;
  ELSE
    RETURN UPPER(TRIM(BOTH FROM substring(field from 1 for position(':' in field) - 1)));
  END IF;
END;
$$ LANGUAGE plpgsql;

DROP FUNCTION IF EXISTS right_text();

CREATE OR REPLACE FUNCTION right_text(field TEXT) RETURNS TEXT AS $$
BEGIN
  IF position(':' in field) = 0 THEN
    RETURN '';
  ELSE
    RETURN TRIM(BOTH FROM substring(field from position(':' in field) + 1));
  END IF;
END;
$$ LANGUAGE plpgsql;

DROP FUNCTION IF EXISTS validate_date();

CREATE OR REPLACE FUNCTION validate_date(field TEXT) RETURNS DATE AS $$
BEGIN
  IF field = '01/01/1900' THEN
    RETURN NULL;
  ELSE
    RETURN cast (field AS DATE);
  END IF;
END;
$$ LANGUAGE plpgsql;

DROP FUNCTION IF EXISTS funded_by_foreign_entity();

CREATE OR REPLACE FUNCTION funded_by_foreign_entity(field TEXT) RETURNS CHAR AS $$
BEGIN
  CASE field
      WHEN 'Not Applicable' THEN
        RETURN 'X';
      ELSE
        RETURN field;
  END CASE;
END;
$$ LANGUAGE plpgsql;

DROP FUNCTION IF EXISTS contract_action_type();

CREATE OR REPLACE FUNCTION contract_action_type(field TEXT) RETURNS TEXT AS $$
BEGIN
  CASE field
    WHEN 'BPA Blanket Purchase Agreement' THEN
      RETURN 'BPA';
    WHEN 'BPA Call Blanket Purchase Agreement' THEN
      RETURN 'BPA Call';
    WHEN 'BOA Basic Ordering Agreement' THEN
      RETURN 'BOA';
    WHEN 'IDC Indefinite Delivery Contract' THEN
      RETURN 'IDC';
    WHEN 'PO Purchase Order' THEN
      RETURN 'PO';
    when 'DO Delivery Order' then
      RETURN 'DO';
    when 'DCA Definitive Contract' then
      RETURN 'DCA';
    when 'FSS Federal Supply Schedule' then
      RETURN 'FSS';
    ELSE
      RETURN field;
  END CASE;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION type_of_contract_pricing(field TEXT) RETURNS CHAR AS $$
BEGIN
  CASE left_text(field)
    WHEN 'NO' THEN
      RETURN NULL;
    ELSE
      RETURN left_text(field);
  END CASE;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION performance_based_service_contract(field TEXT) RETURNS CHAR AS $$
BEGIN
  CASE right_text(field)
    WHEN 'NO - SERVICE WHERE PBA IS NOT USED.' THEN
      RETURN 'N';
    WHEN 'YES - SERVICE WHERE PBA IS USED.' THEN
      RETURN 'Y';
    WHEN 'NOT APPLICABLE' THEN
      RETURN 'X';
    WHEN '' THEN
      RETURN NULL;
    ELSE
      RETURN field;
  END CASE;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION national_interest_action(field TEXT) RETURNS VARCHAR(4) AS $$
BEGIN
  CASE left_text(field)
    WHEN 'NONE' THEN
      RETURN NULL;
    WHEN '' THEN
      RETURN NULL;
    ELSE
      RETURN left_text(field);
  END CASE;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION type_of_idc(field TEXT) RETURNS CHAR AS $$
BEGIN
  CASE field
    WHEN 'INDEFINITE DELIVERY / REQUIREMENTS' THEN
      RETURN 'A';
    WHEN 'INDEFINITE DELIVERY / INDEFINITE QUANTITY' THEN
      RETURN 'B';
    WHEN 'INDEFINITE DELIVERY / DEFINITE QUANTITY' THEN
      RETURN 'C';
    ELSE
      RETURN field;
  END CASE;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION validate_country(field TEXT) RETURNS TEXT AS $$
DECLARE
  aux_code TEXT;
  new_code TEXT;
BEGIN
  if field is null THEN
    RETURN NULL;
  ELSEIF field = ':' THEN
    RETURN NULL;
  ELSE
    aux_code := left_text(field);
    if length(aux_code) <= 3 then
      CASE aux_code
        WHEN 'DE1' THEN
          RETURN 'DEU';
        WHEN 'JP1', 'JTN' THEN
          RETURN 'JPN';
        WHEN 'UA1', 'US:', 'US' THEN
          RETURN 'USA';
        ELSE
          RETURN aux_code;
      END CASE;
    ELSE
      SELECT code
      INTO STRICT new_code
      FROM country_variation
      WHERE name = aux_code;
      RETURN new_code;
    END IF;
  END IF;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ccr_exception(field CHAR) RETURNS CHAR AS $$
BEGIN
  CASE field
    WHEN 'A' THEN
      RETURN '6';
    WHEN 'G' THEN
      RETURN '1';
    WHEN 'M' THEN
      RETURN '7';
    ELSE
      RETURN field;
  END CASE;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION validate_state(field TEXT) RETURNS TEXT AS $$
DECLARE
  aux_code TEXT;
  new_code TEXT;
BEGIN
  if field is null THEN
    RETURN NULL;
  ELSEIF field = ':' THEN
    RETURN NULL;
  ELSE
    aux_code := left_text(field);
    if length(aux_code) = 2 then
      RETURN aux_code;
    ELSE
      aux_code := right_text(field);
      SELECT code
      INTO STRICT new_code
      FROM state
      WHERE description = aux_code;
      RETURN new_code;
    END IF;
  END IF;
END;
$$ LANGUAGE plpgsql;
