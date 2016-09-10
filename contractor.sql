CREATE TABLE IF NOT EXISTS contractor (
  duns_number VARCHAR(9) CONSTRAINT pk_contractor PRIMARY KEY,
  frequency   INTEGER,
  first       DATE,
  last        DATE
);

INSERT INTO contractor
(duns_number, frequency, first, last)
  SELECT
    contractor_duns_number,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL
  GROUP BY contractor_duns_number
ON CONFLICT (duns_number)
  DO UPDATE SET frequency = contractor.frequency + EXCLUDED.frequency,
    first                 = LEAST(contractor.first, EXCLUDED.first),
    last                  = GREATEST(contractor.last, EXCLUDED.last);

INSERT INTO contractor
(duns_number, frequency, first, last)
  SELECT
    contractor_parent_duns_number,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_parent_duns_number IS NOT NULL
  GROUP BY contractor_parent_duns_number
ON CONFLICT (duns_number)
  DO UPDATE SET frequency = contractor.frequency + EXCLUDED.frequency,
    first                 = LEAST(contractor.first, EXCLUDED.first),
    last                  = GREATEST(contractor.last, EXCLUDED.last);

CREATE TYPE name_type AS ENUM
('name',
  'alternate_name',
  'legal_organization_name',
  'doing_as_business_name');

CREATE TABLE IF NOT EXISTS contractor_name (
  duns_number VARCHAR(9),
  name        TEXT,
  type        name_type,
  frequency   INTEGER,
  first       DATE,
  last        DATE,
  CONSTRAINT pk_contractor_name PRIMARY KEY (duns_number, name, type),
  CONSTRAINT fk_contractor_name FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

INSERT INTO contractor_name
(duns_number, name, type, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_name,
    'name',
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_name IS NOT NULL
  GROUP BY contractor_duns_number, contractor_name;

INSERT INTO contractor_name
(duns_number, name, type, frequency, first, last)
  SELECT
    contractor_parent_duns_number,
    contractor_parent_name,
    'name',
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_parent_duns_number IS NOT NULL AND
        contractor_parent_name IS NOT NULL
  GROUP BY contractor_parent_duns_number, contractor_parent_name
ON CONFLICT (duns_number, name, type)
  DO UPDATE SET frequency = contractor_name.frequency + EXCLUDED.frequency,
    first                 = LEAST(contractor_name.first, EXCLUDED.first),
    last                  = GREATEST(contractor_name.last, EXCLUDED.last);

INSERT INTO contractor_name
(duns_number, name, type, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_alternate_name,
    'alternate_name',
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_alternate_name IS NOT NULL
  GROUP BY contractor_duns_number, contractor_alternate_name;

INSERT INTO contractor_name
(duns_number, name, type, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_legal_organization_name,
    'legal_organization_name',
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_legal_organization_name IS NOT NULL
  GROUP BY contractor_duns_number, contractor_legal_organization_name;

INSERT INTO contractor_name
(duns_number, name, type, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_doing_as_business_name,
    'doing_as_business_name',
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_doing_as_business_name IS NOT NULL
  GROUP BY contractor_duns_number, contractor_doing_as_business_name;

CREATE TABLE contractor_division_name (
  duns_number   VARCHAR(9),
  division_name TEXT,
  frequency     INTEGER,
  first         DATE,
  last          DATE,
  CONSTRAINT pk_contractor_division_name PRIMARY KEY (duns_number, division_name),
  CONSTRAINT fk_contractor_division_name FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

INSERT INTO contractor_division_name
(duns_number, division_name, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_division_name,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_division_name IS NOT NULL
  GROUP BY contractor_duns_number, contractor_division_name;

CREATE TABLE contractor_division_number_or_office_code (
  duns_number                    VARCHAR(9),
  division_number_or_office_code TEXT,
  first                          DATE,
  last                           DATE,
  frequency                      INTEGER,
  CONSTRAINT pk_contractor_division_number_or_office_code PRIMARY KEY (duns_number, division_number_or_office_code),
  CONSTRAINT fk_contractor_division_number_or_office_code FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

INSERT INTO contractor_division_number_or_office_code
(duns_number, division_number_or_office_code, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_division_number_or_office_code,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_division_number_or_office_code IS NOT NULL
  GROUP BY contractor_duns_number, contractor_division_number_or_office_code;

CREATE TABLE contractor_enabled (
  duns_number VARCHAR(9),
  enabled     TEXT,
  frequency   INTEGER,
  first       DATE,
  last        DATE,
  CONSTRAINT pk_contractor_enabled PRIMARY KEY (duns_number, enabled),
  CONSTRAINT fk_contractor_enabled FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

INSERT INTO contractor_enabled
(duns_number, enabled, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_enabled,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_enabled IS NOT NULL
  GROUP BY contractor_duns_number, contractor_enabled;

CREATE TABLE contractor_location_disable_flag (
  duns_number           VARCHAR(9),
  location_disable_flag TEXT,
  frequency             INTEGER,
  first                 DATE,
  last                  DATE,
  CONSTRAINT pk_contractor_location_disable_flag PRIMARY KEY (duns_number, location_disable_flag),
  CONSTRAINT fk_contractor_location_disable_flag FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

INSERT INTO contractor_location_disable_flag
(duns_number, location_disable_flag, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_location_disable_flag,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_location_disable_flag IS NOT NULL
  GROUP BY contractor_duns_number, contractor_location_disable_flag;

CREATE TABLE contractor_address (
  id                               SERIAL CONSTRAINT pk_contractor_address PRIMARY KEY,
  duns_number                      VARCHAR(9) NOT NULL,
  street_address_1                 TEXT       NOT NULL,
  street_address_2                 TEXT       NOT NULL,
  street_address_3                 TEXT       NOT NULL,
  city                             TEXT       NOT NULL,
  state                            TEXT       NOT NULL,
  state_redundant                  TEXT       NOT NULL,
  zip_code                         TEXT       NOT NULL,
  country_code                     VARCHAR(3),
  congressional_district           TEXT       NOT NULL,
  congressional_district_redundant TEXT       NOT NULL,
  frequency                        INTEGER,
  first                            DATE,
  last                             DATE,
  CONSTRAINT fk_contractor_address FOREIGN KEY (duns_number) REFERENCES contractor (duns_number),
  CONSTRAINT fk_contractor_address_country FOREIGN KEY (country_code) REFERENCES country (code)
);

CREATE UNIQUE INDEX u_contractor_address_with_country
  ON contractor_address
  (duns_number, street_address_1, street_address_2, street_address_3, city, state, zip_code, country_code, congressional_district)
  WHERE country_code IS NOT NULL;

CREATE UNIQUE INDEX u_contractor_address_without_country
  ON contractor_address
  (duns_number, street_address_1, street_address_2, street_address_3, city, state, zip_code, congressional_district)
  WHERE country_code IS NULL;

INSERT INTO contractor_address
(duns_number, street_address_1, street_address_2, street_address_3, city, state, state_redundant,
 zip_code, country_code, congressional_district, congressional_district_redundant, frequency, first, last)
  SELECT
    contractor_duns_number,
    COALESCE(contractor_street_address_1, ''),
    COALESCE(contractor_street_address_2, ''),
    COALESCE(contractor_street_address_3, ''),
    COALESCE(contractor_city, ''),
    COALESCE(contractor_state, ''),
    COALESCE(contractor_state_redundant, ''),
    COALESCE(contractor_zip_code, ''),
    contractor_country,
    COALESCE(contractor_congressional_district, ''),
    COALESCE(contractor_congressional_district_redundant, ''),
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_street_address_1,
    contractor_street_address_2,
    contractor_street_address_3,
    contractor_city,
    contractor_state,
    contractor_state_redundant,
    contractor_zip_code,
    contractor_country,
    contractor_congressional_district,
    contractor_congressional_district_redundant;

CREATE TABLE contractor_parent (
  duns_number        VARCHAR(9),
  parent_duns_number VARCHAR(9),
  frequency          INTEGER,
  first              DATE,
  last               DATE,
  CONSTRAINT pk_contractor_parent PRIMARY KEY (duns_number, parent_duns_number),
  CONSTRAINT fk_contractor_parent_child FOREIGN KEY (duns_number) REFERENCES contractor (duns_number),
  CONSTRAINT fk_contractor_parent_parent FOREIGN KEY (parent_duns_number) REFERENCES contractor (duns_number)
);

INSERT INTO contractor_parent
(duns_number, parent_duns_number, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_parent_duns_number,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_parent_duns_number IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_parent_duns_number;

CREATE TABLE contractor_registration_date (
  duns_number       VARCHAR(9),
  registration_date DATE,
  frequency         INTEGER,
  first             DATE,
  last              DATE,
  CONSTRAINT pk_contractor_registration_date PRIMARY KEY (duns_number, registration_date),
  CONSTRAINT fk_contractor_registration_date FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

INSERT INTO contractor_registration_date
(duns_number, registration_date, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_registration_date,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_registration_date IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_registration_date;

CREATE TABLE contractor_renewal_date (
  duns_number  VARCHAR(9),
  renewal_date DATE,
  frequency    INTEGER,
  first        DATE,
  last         DATE,
  CONSTRAINT pk_contractor_renewal_date PRIMARY KEY (duns_number, renewal_date),
  CONSTRAINT fk_contractor_renewal_date FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

INSERT INTO contractor_renewal_date
(duns_number, renewal_date, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_renewal_date,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_renewal_date IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_renewal_date;

CREATE TABLE contractor_phone_number (
  duns_number  VARCHAR(9),
  phone_number TEXT,
  frequency    INTEGER,
  first        DATE,
  last         DATE,
  CONSTRAINT pk_contractor_phone_number PRIMARY KEY (duns_number, phone_number),
  CONSTRAINT fk_contractor_phone_number FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

INSERT INTO contractor_phone_number
(duns_number, phone_number, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_phone_number,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_phone_number IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_phone_number;

CREATE TABLE contractor_fax_number (
  duns_number VARCHAR(9),
  fax_number  TEXT,
  frequency   INTEGER,
  first       DATE,
  last        DATE,
  CONSTRAINT pk_contractor_fax_number PRIMARY KEY (duns_number, fax_number),
  CONSTRAINT fk_contractor_fax_number FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

INSERT INTO contractor_fax_number
(duns_number, fax_number, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_fax_number,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_fax_number IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_fax_number;

CREATE TABLE contractor_organizational_type (
  duns_number         VARCHAR(9),
  organizational_type TEXT,
  frequency           INTEGER,
  first               DATE,
  last                DATE,
  CONSTRAINT pk_contractor_organizational_type PRIMARY KEY (duns_number, organizational_type),
  CONSTRAINT fk_contractor_organizational_type FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

INSERT INTO contractor_organizational_type
(duns_number, organizational_type, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_organizational_type,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_organizational_type IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_organizational_type;

CREATE TABLE contractor_number_of_employees (
  duns_number         VARCHAR(9),
  number_of_employees BIGINT,
  frequency           INTEGER,
  first               DATE,
  last                DATE,
  CONSTRAINT pk_contractor_number_of_employees PRIMARY KEY (duns_number, number_of_employees),
  CONSTRAINT fk_contractor_number_of_employees FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

INSERT INTO contractor_number_of_employees
(duns_number, number_of_employees, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_number_of_employees,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contract.contractor_number_of_employees IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_number_of_employees;

CREATE TABLE contractor_annual_revenue (
  duns_number    VARCHAR(9),
  annual_revenue MONEY,
  frequency      INTEGER,
  first          DATE,
  last           DATE,
  CONSTRAINT pk_contractor_annual_revenue PRIMARY KEY (duns_number, annual_revenue),
  CONSTRAINT fk_contractor_annual_revenue FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

INSERT INTO contractor_annual_revenue
(duns_number, annual_revenue, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_annual_revenue,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_annual_revenue IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_annual_revenue;

CREATE TABLE contractor_flag (
  duns_number VARCHAR(9),
  flag_name   VARCHAR(50),
  flag_value  CHAR,
  frequency   INTEGER,
  first       DATE,
  last        DATE,
  CONSTRAINT pk_contractor_flag PRIMARY KEY (duns_number, flag_name, flag_value),
  CONSTRAINT fk_contractor_flag FOREIGN KEY (duns_number) REFERENCES contractor (duns_number),
  CONSTRAINT fk_contractor_flag_flag FOREIGN KEY (flag_name) REFERENCES flag (flag_name),
  CONSTRAINT fk_contractor_flag_value FOREIGN KEY (flag_value) REFERENCES flag_value (code)
);

CREATE OR REPLACE FUNCTION insert_flag()
  RETURNS VOID AS
$func$
DECLARE
  flag TEXT;
BEGIN
  FOR flag IN SELECT flag_name FROM flag LOOP
    EXECUTE format('INSERT INTO contractor_flag ' ||
                   '(duns_number, flag_name, flag_value, ' ||
                   'frequency, first, last) ' ||
                   'select ' ||
                   'contractor_duns_number, ' ||
                   '''%I'', %I, ' ||
                   'count(*), ' ||
                   'min(last_modified_date), ' ||
                   'max(last_modified_date) ' ||
                   'from contract ' ||
                   'where contractor_duns_number is NOT NULL and ' ||
                   '%I is not NULL ' ||
                   'group by contractor_duns_number, %I;',
                   flag, flag, flag, flag);
    END LOOP;
END
$func$ LANGUAGE plpgsql;

select insert_flag();

CREATE TABLE contractor_business_size (
  duns_number    VARCHAR(9),
  business_size CHAR,
  frequency      INTEGER,
  first          DATE,
  last           DATE,
  CONSTRAINT pk_contractor_business_size PRIMARY KEY (duns_number, business_size),
  CONSTRAINT fk_contractor_business_size_duns FOREIGN KEY (duns_number) REFERENCES contractor (duns_number),
  CONSTRAINT fk_contractor_business_size FOREIGN KEY (business_size) REFERENCES business_size (code)
);

INSERT INTO contractor_business_size
(duns_number, business_size, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractingofficerbusinesssizedetermination,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractingofficerbusinesssizedetermination IS NOT NULL
  GROUP BY contractor_duns_number,
    contractingofficerbusinesssizedetermination;

CREATE TABLE contractor_ccr_exception (
  duns_number    VARCHAR(9),
  ccr_exception CHAR,
  frequency      INTEGER,
  first          DATE,
  last           DATE,
  CONSTRAINT pk_contractor_ccr_exception PRIMARY KEY (duns_number, ccr_exception),
  CONSTRAINT fk_contractor_ccr_exception_duns FOREIGN KEY (duns_number) REFERENCES contractor (duns_number),
  CONSTRAINT fk_contractor_ccr_exception FOREIGN KEY (ccr_exception) REFERENCES ccr_exception (code)
);

INSERT INTO contractor_ccr_exception
(duns_number, ccr_exception, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_ccr_exception,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_ccr_exception IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_ccr_exception;

CREATE TABLE contractor_site_code (
  duns_number    VARCHAR(9),
  site_code TEXT,
  frequency      INTEGER,
  first          DATE,
  last           DATE,
  CONSTRAINT pk_contractor_site_code PRIMARY KEY (duns_number, site_code),
  CONSTRAINT fk_contractor_site_code FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

INSERT INTO contractor_site_code
(duns_number, site_code, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_site_code,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_site_code IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_site_code;


CREATE TABLE contractor_alternate_site_code (
  duns_number    VARCHAR(9),
  alternate_site_code TEXT,
  frequency      INTEGER,
  first          DATE,
  last           DATE,
  CONSTRAINT pk_contractor_alternate_site_code PRIMARY KEY (duns_number, alternate_site_code),
  CONSTRAINT fk_contractor_alternate_site_code FOREIGN KEY (duns_number) REFERENCES contractor (duns_number)
);

INSERT INTO contractor_alternate_site_code
(duns_number, alternate_site_code, frequency, first, last)
  SELECT
    contractor_duns_number,
    contractor_alternate_site_code,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contractor_duns_number IS NOT NULL AND
        contractor_alternate_site_code IS NOT NULL
  GROUP BY contractor_duns_number,
    contractor_alternate_site_code;
