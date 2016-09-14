INSERT INTO department
(department_id, frequency, first, last)
  SELECT
    contracting_department_id,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contracting_department_id IS NOT NULL
  GROUP BY contracting_department_id
ON CONFLICT (department_id)
  DO UPDATE SET frequency = department.frequency + EXCLUDED.frequency,
    first                 = LEAST(department.first, EXCLUDED.first),
    last                  = GREATEST(department.last, EXCLUDED.last);

INSERT INTO department
(department_id, frequency, first, last)
  SELECT
    funding_department_id,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contracting_department_id IS NOT NULL
  GROUP BY funding_department_id
ON CONFLICT (department_id)
  DO UPDATE SET frequency = department.frequency + EXCLUDED.frequency,
    first                 = LEAST(department.first, EXCLUDED.first),
    last                  = GREATEST(department.last, EXCLUDED.last);


INSERT INTO department_name
(department_id, department_name, frequency, first, last)
  SELECT
    contracting_department_id,
    contracting_department_name,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contracting_department_id IS NOT NULL AND
        contract_all.contracting_department_name IS NOT NULL
  GROUP BY contracting_department_id, contracting_department_name
ON CONFLICT (department_id, department_name)
  DO UPDATE SET frequency = department_name.frequency + EXCLUDED.frequency,
    first                 = LEAST(department_name.first, EXCLUDED.first),
    last                  = GREATEST(department_name.last, EXCLUDED.last);

INSERT INTO department_name
(department_id, department_name, frequency, first, last)
  SELECT
    funding_department_id,
    funding_department_name,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE funding_department_id IS NOT NULL AND
        contract_all.funding_department_name IS NOT NULL
  GROUP BY funding_department_id, funding_department_name
ON CONFLICT (department_id, department_name)
  DO UPDATE SET frequency = department_name.frequency + EXCLUDED.frequency,
    first                 = LEAST(department_name.first, EXCLUDED.first),
    last                  = GREATEST(department_name.last, EXCLUDED.last);

INSERT INTO agency
(department_id, agency_id, frequency, first, last)
  SELECT
    contracting_department_id,
    contracting_agency_id,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE contracting_agency_id IS NOT NULL
  GROUP BY contracting_department_id, contracting_agency_id
ON CONFLICT (agency_id)
  DO UPDATE SET frequency = agency.frequency + EXCLUDED.frequency,
    first                 = LEAST(agency.first, EXCLUDED.first),
    last                  = GREATEST(agency.last, EXCLUDED.last);

INSERT INTO agency
(department_id, agency_id, frequency, first, last)
  SELECT
    funding_department_id,
    funding_agency_id,
    count(*)                AS frequency,
    min(last_modified_date) AS first,
    max(last_modified_date) AS last
  FROM contract
  WHERE funding_agency_id IS NOT NULL
  GROUP BY funding_department_id, funding_agency_id
ON CONFLICT (agency_id)
  DO UPDATE SET frequency = agency.frequency + EXCLUDED.frequency,
    first                 = LEAST(agency.first, EXCLUDED.first),
    last                  = GREATEST(agency.last, EXCLUDED.last);


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

--
-- TEMPORARY CODE
--

ALTER TABLE contract
  ADD COLUMN contractor_other_location_info TEXT,
  RENAME contractor_state_redundant TO contractor_state_other_info_redundant;

update contract
set contractor_other_location_info = contractor_other_location_info(contractor_state) AND
  contractor_state = contractor_state(contractor_state)
where contractor_state is NOT NULL;

DROP FUNCTION contractor_other_location_info();
DROP FUNCTION contractor_state();

ALTER TABLE contract ADD FOREIGN KEY(contractor_state) REFERENCES state(code);

--
-- END OF TEMPORARY CODE
--

INSERT INTO contractor_address
(duns_number, street_address_1, street_address_2, street_address_3, city, state, other_location_info,
 zip_code, country_code, congressional_district, frequency, first, last)
  SELECT
    contractor_duns_number,
    COALESCE(contractor_street_address_1, ''),
    COALESCE(contractor_street_address_2, ''),
    COALESCE(contractor_street_address_3, ''),
    COALESCE(contractor_city, ''),
    contractor_state,
    COALESCE(contractor_other_location_info, ''),
    COALESCE(contractor_zip_code, ''),
    contractor_country,
    COALESCE(contractor_congressional_district, ''),
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
    contractor_other_location_info,
    contractor_zip_code,
    contractor_country,
    contractor_congressional_district;

select insert_flag();