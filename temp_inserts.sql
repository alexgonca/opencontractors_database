\timing
\set ECHO all
\set VERBOSITY verbose

-- INSERT INTO department
-- (department_id, frequency, first, last)
--   SELECT
--     contracting_department_id,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contracting_department_id IS NOT NULL
--   GROUP BY contracting_department_id
-- ON CONFLICT (department_id)
--   DO UPDATE SET frequency = department.frequency + EXCLUDED.frequency,
--     first                 = LEAST(department.first, EXCLUDED.first),
--     last                  = GREATEST(department.last, EXCLUDED.last);

-- INSERT 0 1
-- Time: 355458.435 ms

-- INSERT INTO department
-- (department_id, frequency, first, last)
--   SELECT
--     funding_department_id,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE funding_department_id IS NOT NULL
--   GROUP BY funding_department_id
-- ON CONFLICT (department_id)
--   DO UPDATE SET frequency = department.frequency + EXCLUDED.frequency,
--     first                 = LEAST(department.first, EXCLUDED.first),
--     last                  = GREATEST(department.last, EXCLUDED.last);

-- INSERT 0 79
-- Time: 361676.274 ms

-- INSERT INTO department_name
-- (department_id, department_name, frequency, first, last)
--   SELECT
--     contracting_department_id,
--     contracting_department_name,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contracting_department_id IS NOT NULL AND
--         contracting_department_name IS NOT NULL
--   GROUP BY contracting_department_id, contracting_department_name
-- ON CONFLICT (department_id, department_name)
--   DO UPDATE SET frequency = department_name.frequency + EXCLUDED.frequency,
--     first                 = LEAST(department_name.first, EXCLUDED.first),
--     last                  = GREATEST(department_name.last, EXCLUDED.last);

-- INSERT 0 2
-- Time: 365492.889 ms

-- INSERT INTO department_name
-- (department_id, department_name, frequency, first, last)
--   SELECT
--     funding_department_id,
--     funding_department_name,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE funding_department_id IS NOT NULL AND
--         funding_department_name IS NOT NULL
--   GROUP BY funding_department_id, funding_department_name
-- ON CONFLICT (department_id, department_name)
--   DO UPDATE SET frequency = department_name.frequency + EXCLUDED.frequency,
--     first                 = LEAST(department_name.first, EXCLUDED.first),
--     last                  = GREATEST(department_name.last, EXCLUDED.last);

-- INSERT 0 96
-- Time: 365679.848 ms

INSERT INTO agency
(agency_id, frequency, first, last)
  SELECT
    contracting_agency_id,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contracting_agency_id IS NOT NULL
  GROUP BY contracting_agency_id
ON CONFLICT (agency_id)
  DO UPDATE SET frequency = agency.frequency + EXCLUDED.frequency,
    first                 = LEAST(agency.first, EXCLUDED.first),
    last                  = GREATEST(agency.last, EXCLUDED.last);

-- INSERT 0 31
-- Time: 359351.669 ms

INSERT INTO agency
(agency_id, frequency, first, last)
  SELECT
    funding_agency_id,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE funding_agency_id IS NOT NULL
  GROUP BY funding_agency_id
ON CONFLICT (agency_id)
  DO UPDATE SET frequency = agency.frequency + EXCLUDED.frequency,
    first                 = LEAST(agency.first, EXCLUDED.first),
    last                  = GREATEST(agency.last, EXCLUDED.last);

-- psql:temp_inserts.sql:120: ERROR:  21000: ON CONFLICT DO UPDATE command cannot affect row a second time
-- HINT:  Ensure that no rows proposed for insertion within the same command have duplicate constrained values.
-- LOCATION:  ExecOnConflictUpdate, nodeModifyTable.c:1104
-- Time: 365644.676 ms

INSERT INTO agency_department
(agency_id, department_id, frequency, first, last)
  SELECT
    contracting_agency_id,
    contracting_department_id,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contracting_agency_id IS NOT NULL AND
        contracting_department_id IS NOT NULL
  GROUP BY contracting_agency_id, contracting_department_id
ON CONFLICT (agency_id, department_id)
  DO UPDATE SET frequency = agency_department.frequency + EXCLUDED.frequency,
    first                 = LEAST(agency_department.first, EXCLUDED.first),
    last                  = GREATEST(agency_department.last, EXCLUDED.last);

INSERT INTO agency_department
(agency_id, department_id, frequency, first, last)
  SELECT
    funding_agency_id,
    funding_department_id,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE funding_agency_id IS NOT NULL AND
        funding_department_id IS NOT NULL
  GROUP BY funding_agency_id, funding_department_id
ON CONFLICT (agency_id, department_id)
  DO UPDATE SET frequency = agency_department.frequency + EXCLUDED.frequency,
    first                 = LEAST(agency_department.first, EXCLUDED.first),
    last                  = GREATEST(agency_department.last, EXCLUDED.last);


INSERT INTO agency_name
(agency_id, agency_name, frequency, first, last)
  SELECT
    contracting_agency_id,
    contracting_agency_name,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contracting_agency_id IS NOT NULL AND
        contracting_agency_name IS NOT NULL
  GROUP BY contracting_agency_id, contracting_agency_name
ON CONFLICT (agency_id, agency_name)
  DO UPDATE SET frequency = agency_name.frequency + EXCLUDED.frequency,
    first                 = LEAST(agency_name.first, EXCLUDED.first),
    last                  = GREATEST(agency_name.last, EXCLUDED.last);

-- INSERT 0 32
-- Time: 359352.223 ms

INSERT INTO agency_name
(agency_id, agency_name, frequency, first, last)
  SELECT
    funding_agency_id,
    funding_agency_name,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE funding_agency_id IS NOT NULL AND
        funding_agency_name IS NOT NULL
  GROUP BY funding_agency_id, funding_agency_name
ON CONFLICT (agency_id, agency_name)
  DO UPDATE SET frequency = agency_name.frequency + EXCLUDED.frequency,
    first                 = LEAST(agency_name.first, EXCLUDED.first),
    last                  = GREATEST(agency_name.last, EXCLUDED.last);

-- psql:temp_inserts.sql:161: ERROR:  23503: insert or update on table "agency_name" violates foreign key constraint "fk_agency_name"
-- DETAIL:  Key (agency_id)=(1760) is not present in table "agency".
-- SCHEMA NAME:  public
-- TABLE NAME:  agency_name
-- CONSTRAINT NAME:  fk_agency_name
-- LOCATION:  ri_ReportViolation, ri_triggers.c:3326
-- Time: 365730.059 ms

INSERT INTO office
(agency_id, office_id, frequency, first, last)
  SELECT
    contracting_agency_id,
    contracting_office_id,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contracting_agency_id IS NOT NULL AND
        contracting_office_id IS NOT NULL
  GROUP BY contracting_agency_id, contracting_office_id
ON CONFLICT (agency_id, office_id)
  DO UPDATE SET frequency = office.frequency + EXCLUDED.frequency,
    first                 = LEAST(office.first, EXCLUDED.first),
    last                  = GREATEST(office.last, EXCLUDED.last);

-- INSERT 0 3437
-- Time: 438580.570 ms

INSERT INTO office
(agency_id, office_id, frequency, first, last)
  SELECT
    funding_agency_id,
    funding_office_id,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE funding_agency_id IS NOT NULL AND
        funding_office_id IS NOT NULL
  GROUP BY funding_agency_id, funding_office_id
ON CONFLICT (agency_id, office_id)
  DO UPDATE SET frequency = office.frequency + EXCLUDED.frequency,
    first                 = LEAST(office.first, EXCLUDED.first),
    last                  = GREATEST(office.last, EXCLUDED.last);

-- psql:temp_inserts.sql:202: ERROR:  23503: insert or update on table "office" violates foreign key constraint "fk_office_agency"
-- DETAIL:  Key (agency_id)=(0300) is not present in table "agency".
-- SCHEMA NAME:  public
-- TABLE NAME:  office
-- CONSTRAINT NAME:  fk_office_agency
-- LOCATION:  ri_ReportViolation, ri_triggers.c:3326
-- Time: 437939.599 ms

INSERT INTO office_name
(agency_id, office_id, office_name, frequency, first, last)
  SELECT
    contracting_agency_id,
    contracting_office_id,
    contracting_office_name,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contracting_agency_id IS NOT NULL AND
        contracting_office_id IS NOT NULL AND
        contracting_office_name IS NOT NULL
  GROUP BY contracting_agency_id, contracting_office_id, contracting_office_name
ON CONFLICT (agency_id, office_id, office_name)
  DO UPDATE SET frequency = office_name.frequency + EXCLUDED.frequency,
    first                 = LEAST(office_name.first, EXCLUDED.first),
    last                  = GREATEST(office_name.last, EXCLUDED.last);

-- INSERT 0 3503
-- Time: 458186.150 ms

INSERT INTO office_name
(agency_id, office_id, office_name, frequency, first, last)
  SELECT
    funding_agency_id,
    funding_office_id,
    funding_office_name,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE funding_agency_id IS NOT NULL AND
        funding_office_id IS NOT NULL AND
        funding_office_name IS NOT NULL
  GROUP BY funding_agency_id, funding_office_id, funding_office_name
ON CONFLICT (agency_id, office_id, office_name)
  DO UPDATE SET frequency = office_name.frequency + EXCLUDED.frequency,
    first                 = LEAST(office_name.first, EXCLUDED.first),
    last                  = GREATEST(office_name.last, EXCLUDED.last);

-- psql:temp_inserts.sql:247: ERROR:  23503: insert or update on table "office_name" violates foreign key constraint "fk_office_name"
-- DETAIL:  Key (agency_id, office_id)=(0300, 0300) is not present in table "office".
-- SCHEMA NAME:  public
-- TABLE NAME:  office_name
-- CONSTRAINT NAME:  fk_office_name
-- LOCATION:  ri_ReportViolation, ri_triggers.c:3326
-- Time: 456907.778 ms

-- INSERT INTO contractor
-- (duns_number, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL
--   GROUP BY contractor_duns_number
-- ON CONFLICT (duns_number)
--   DO UPDATE SET frequency = contractor.frequency + EXCLUDED.frequency,
--     first                 = LEAST(contractor.first, EXCLUDED.first),
--     last                  = GREATEST(contractor.last, EXCLUDED.last);

-- INSERT 0 298531
-- Time: 360402.751 ms

-- INSERT INTO contractor
-- (duns_number, frequency, first, last)
--   SELECT
--     contractor_parent_duns_number,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_parent_duns_number IS NOT NULL
--   GROUP BY contractor_parent_duns_number
-- ON CONFLICT (duns_number)
--   DO UPDATE SET frequency = contractor.frequency + EXCLUDED.frequency,
--     first                 = LEAST(contractor.first, EXCLUDED.first),
--     last                  = GREATEST(contractor.last, EXCLUDED.last);

-- INSERT 0 276811
-- Time: 362032.534 ms

-- INSERT INTO contractor_name
-- (duns_number, name, type, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_name,
--     'name',
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractor_name IS NOT NULL
--   GROUP BY contractor_duns_number, contractor_name;
--
-- -- INSERT 0 470870
-- -- Time: 537770.017 ms
--
-- INSERT INTO contractor_name
-- (duns_number, name, type, frequency, first, last)
--   SELECT
--     contractor_parent_duns_number,
--     contractor_parent_name,
--     'name',
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_parent_duns_number IS NOT NULL AND
--         contractor_parent_name IS NOT NULL
--   GROUP BY contractor_parent_duns_number, contractor_parent_name
-- ON CONFLICT (duns_number, name, type)
--   DO UPDATE SET frequency = contractor_name.frequency + EXCLUDED.frequency,
--     first                 = LEAST(contractor_name.first, EXCLUDED.first),
--     last                  = GREATEST(contractor_name.last, EXCLUDED.last);
--
-- -- INSERT 0 314169
-- -- Time: 498426.522 ms
--
-- INSERT INTO contractor_name
-- (duns_number, name, type, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_alternate_name,
--     'alternate_name',
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractor_alternate_name IS NOT NULL
--   GROUP BY contractor_duns_number, contractor_alternate_name;
--
-- -- INSERT 0 79787
-- -- Time: 373088.921 ms
--
-- INSERT INTO contractor_name
-- (duns_number, name, type, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_legal_organization_name,
--     'legal_organization_name',
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractor_legal_organization_name IS NOT NULL
--   GROUP BY contractor_duns_number, contractor_legal_organization_name;
--
-- -- INSERT 0 111822
-- -- Time: 383673.794 ms
--
-- INSERT INTO contractor_name
-- (duns_number, name, type, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_doing_as_business_name,
--     'doing_as_business_name',
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractor_doing_as_business_name IS NOT NULL
--   GROUP BY contractor_duns_number, contractor_doing_as_business_name;
--
-- -- INSERT 0 17451
-- -- Time: 357430.214 ms
--
-- INSERT INTO contractor_division_name
-- (duns_number, division_name, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_division_name,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractor_division_name IS NOT NULL
--   GROUP BY contractor_duns_number, contractor_division_name;
--
-- -- INSERT 0 1
-- -- Time: 358027.842 ms
--
-- INSERT INTO contractor_division_number_or_office_code
-- (duns_number, division_number_or_office_code, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_division_number_or_office_code,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractor_division_number_or_office_code IS NOT NULL
--   GROUP BY contractor_duns_number, contractor_division_number_or_office_code;
--
-- -- INSERT 0 0
-- -- Time: 359582.849 ms
--
-- INSERT INTO contractor_enabled
-- (duns_number, enabled, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_enabled,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractor_enabled IS NOT NULL
--   GROUP BY contractor_duns_number, contractor_enabled;
--
-- -- INSERT 0 0
-- -- Time: 359573.543 ms
--
-- INSERT INTO contractor_location_disable_flag
-- (duns_number, location_disable_flag, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_location_disable_flag,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractor_location_disable_flag IS NOT NULL
--   GROUP BY contractor_duns_number, contractor_location_disable_flag;
--
-- -- INSERT 0 0
-- -- Time: 359338.501 ms
--
-- INSERT INTO contractor_parent
-- (duns_number, parent_duns_number, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_parent_duns_number,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractor_parent_duns_number IS NOT NULL
--   GROUP BY contractor_duns_number,
--     contractor_parent_duns_number;
--
-- -- INSERT 0 304716
-- -- Time: 463645.712 ms
--
-- INSERT INTO contractor_registration_date
-- (duns_number, registration_date, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_registration_date,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractor_registration_date IS NOT NULL
--   GROUP BY contractor_duns_number,
--     contractor_registration_date;
--
-- -- INSERT 0 208237
-- -- Time: 415106.614 ms
--
-- INSERT INTO contractor_renewal_date
-- (duns_number, renewal_date, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_renewal_date,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractor_renewal_date IS NOT NULL
--   GROUP BY contractor_duns_number,
--     contractor_renewal_date;
--
-- -- INSERT 0 656153
-- -- Time: 420251.865 ms
--
-- INSERT INTO contractor_phone_number
-- (duns_number, phone_number, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_phone_number,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractor_phone_number IS NOT NULL
--   GROUP BY contractor_duns_number,
--     contractor_phone_number;
--
-- -- INSERT 0 180435
-- -- Time: 399915.470 ms
--
-- INSERT INTO contractor_fax_number
-- (duns_number, fax_number, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_fax_number,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractor_fax_number IS NOT NULL
--   GROUP BY contractor_duns_number,
--     contractor_fax_number;
--
-- -- INSERT 0 170252
-- -- Time: 398165.042 ms
--
-- INSERT INTO contractor_organizational_type
-- (duns_number, organizational_type, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_organizational_type,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractor_organizational_type IS NOT NULL
--   GROUP BY contractor_duns_number,
--     contractor_organizational_type;
--
-- -- INSERT 0 200630
-- -- Time: 406132.610 ms
--
-- INSERT INTO contractor_number_of_employees
-- (duns_number, number_of_employees, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_number_of_employees,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contract.contractor_number_of_employees IS NOT NULL
--   GROUP BY contractor_duns_number,
--     contractor_number_of_employees;
--
-- -- INSERT 0 527524
-- -- Time: 452131.640 ms

-- INSERT INTO contractor_annual_revenue
-- (duns_number, annual_revenue, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_annual_revenue,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractor_annual_revenue IS NOT NULL
--   GROUP BY contractor_duns_number,
--     contractor_annual_revenue;
--
-- -- INSERT 0 572719
-- -- Time: 458160.876 ms

-- INSERT INTO contractor_business_size
-- (duns_number, business_size, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractingofficerbusinesssizedetermination,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractingofficerbusinesssizedetermination IS NOT NULL
--   GROUP BY contractor_duns_number,
--     contractingofficerbusinesssizedetermination;
--
-- -- INSERT 0 353293
-- -- Time: 371122.431 ms
--
-- INSERT INTO contractor_ccr_exception
-- (duns_number, ccr_exception, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_ccr_exception,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractor_ccr_exception IS NOT NULL
--   GROUP BY contractor_duns_number,
--     contractor_ccr_exception;
--
-- -- INSERT 0 6479
-- -- Time: 355840.126 ms
--
-- INSERT INTO contractor_site_code
-- (duns_number, site_code, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_site_code,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractor_site_code IS NOT NULL
--   GROUP BY contractor_duns_number,
--     contractor_site_code;
--
-- -- INSERT 0 268625
-- -- Time: 428909.679 ms
--
-- INSERT INTO contractor_alternate_site_code
-- (duns_number, alternate_site_code, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     contractor_alternate_site_code,
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL AND
--         contractor_alternate_site_code IS NOT NULL
--   GROUP BY contractor_duns_number,
--     contractor_alternate_site_code;
--
-- -- INSERT 0 274504
-- -- Time: 424768.653 ms

--
-- TEMPORARY CODE
--

-- ALTER TABLE contract ADD COLUMN contractor_other_location_info TEXT;
--
-- -- [2016-09-14 10:34:43] completed in 29ms
--
-- ALTER TABLE contract RENAME contractor_state_redundant TO contractor_state_other_info_redundant;
--
-- -- [2016-09-14 10:34:53] completed in 22ms

-- update contract
-- set contractor_other_location_info = contractor_other_location_info(contractor_state),
--   contractor_state = contractor_state(contractor_state)
-- where contractor_state is NOT NULL;

-- UPDATE 21540627
-- Time: 17257989.668 ms

-- DROP FUNCTION contractor_other_location_info(TEXT);
--
-- -- [2016-09-14 18:28:04] completed in 17ms
--
-- DROP FUNCTION contractor_state(TEXT);
--
-- -- [2016-09-14 18:27:59] completed in 42ms

-- ALTER TABLE contract ADD FOREIGN KEY(contractor_state) REFERENCES state(code);

-- ALTER TABLE
-- Time: 2058663.885 ms

--
-- END OF TEMPORARY CODE
--

-- INSERT INTO contractor_address
-- (duns_number, street_address_1, street_address_2, street_address_3, city, state, other_location_info,
--  zip_code, country_code, congressional_district, frequency, first, last)
--   SELECT
--     contractor_duns_number,
--     COALESCE(contractor_street_address_1, ''),
--     COALESCE(contractor_street_address_2, ''),
--     COALESCE(contractor_street_address_3, ''),
--     COALESCE(contractor_city, ''),
--     contractor_state,
--     COALESCE(contractor_other_location_info, ''),
--     COALESCE(contractor_zip_code, ''),
--     contractor_country,
--     COALESCE(contractor_congressional_district, ''),
--     count(*)                AS frequency,
--     min(last_modified_date) AS first,
--     max(last_modified_date) AS last
--   FROM contract
--   WHERE contractor_duns_number IS NOT NULL
--   GROUP BY contractor_duns_number,
--     contractor_street_address_1,
--     contractor_street_address_2,
--     contractor_street_address_3,
--     contractor_city,
--     contractor_state,
--     contractor_other_location_info,
--     contractor_zip_code,
--     contractor_country,
--     contractor_congressional_district;

-- INSERT 0 606979
-- Time: 1060627.360 ms

--                       ^
-- Time: 7.157 ms

-- select insert_flag();

--  insert_flag
-- -------------
--
-- (1 row)
--
-- Time: 34006192.330 ms