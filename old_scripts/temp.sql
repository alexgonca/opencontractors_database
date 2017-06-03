CREATE TABLE agency_per_year AS
select contracting_agency_id,
    sum(CASE WHEN fiscal_year = '2000' THEN dollars_obligated
        ELSE cast(0 as MONEY)
        END) as year_2000,
    sum(CASE WHEN fiscal_year = '2001' THEN dollars_obligated
        ELSE cast(0 as MONEY)
        END) as year_2001,
    sum(CASE WHEN fiscal_year = '2002' THEN dollars_obligated
        ELSE cast(0 as MONEY)
        END) as year_2002,
    sum(CASE WHEN fiscal_year = '2003' THEN dollars_obligated
        ELSE cast(0 as MONEY)
        END) as year_2003,
    sum(CASE WHEN fiscal_year = '2004' THEN dollars_obligated
        ELSE cast(0 as MONEY)
        END) as year_2004,
    sum(CASE WHEN fiscal_year = '2005' THEN dollars_obligated
        ELSE cast(0 as MONEY)
         END) as year_2005,
    sum(CASE WHEN fiscal_year = '2006' THEN dollars_obligated
        ELSE cast(0 as MONEY)
        END) as year_2006,
    sum(CASE WHEN fiscal_year = '2007' THEN dollars_obligated
        ELSE cast(0 as MONEY)
        END) as year_2007,
    sum(CASE WHEN fiscal_year = '2008' THEN dollars_obligated
        ELSE cast(0 as MONEY)
        END) as year_2008,
    sum(CASE WHEN fiscal_year = '2009' THEN dollars_obligated
        ELSE cast(0 as MONEY)
        END) as year_2009,
    sum(CASE WHEN fiscal_year = '2010' THEN dollars_obligated
        ELSE cast(0 as MONEY)
        END) as year_2010,
    sum(CASE WHEN fiscal_year = '2011' THEN dollars_obligated
        ELSE cast(0 as MONEY)
        END) as year_2011,
    sum(CASE WHEN fiscal_year = '2012' THEN dollars_obligated
        ELSE cast(0 as MONEY)
        END) as year_2012,
    sum(CASE WHEN fiscal_year = '2013' THEN dollars_obligated
        ELSE cast(0 as MONEY)
        END) as year_2013,
    sum(CASE WHEN fiscal_year = '2014' THEN dollars_obligated
        ELSE cast(0 as MONEY)
        END) as year_2014,
    sum(CASE WHEN fiscal_year = '2015' THEN dollars_obligated
        ELSE cast(0 as MONEY)
        END) as year_2015,
    sum(CASE WHEN fiscal_year = '2016' THEN dollars_obligated
        ELSE cast(0 as MONEY)
        END) as year_2016
  from contract
  GROUP BY contracting_agency_id;
