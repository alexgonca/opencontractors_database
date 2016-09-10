CREATE TABLE IF NOT EXISTS department(
  department_id VARCHAR(4) CONSTRAINT pk_department PRIMARY KEY,
  frequency INT,
  first DATE,
  last DATE
);

INSERT INTO department
(department_id, frequency, first, last)
select contracting_department_id,
  count(*) as frequency,
  min(last_modified_date) as first,
  max(last_modified_date) as last
from contract
    where contracting_department_id IS NOT NULL
group by contracting_department_id
ON CONFLICT (department_id)
DO UPDATE SET frequency = department.frequency + EXCLUDED.frequency,
first = LEAST(department.first, EXCLUDED.first),
last = GREATEST(department.last, EXCLUDED.last);

INSERT INTO department
(department_id, frequency, first, last)
select funding_department_id,
  count(*) as frequency,
  min(last_modified_date) as first,
  max(last_modified_date) as last
from contract
  where contracting_department_id IS NOT NULL
group by funding_department_id
ON CONFLICT (department_id)
DO UPDATE SET frequency = department.frequency + EXCLUDED.frequency,
first = LEAST(department.first, EXCLUDED.first),
last = GREATEST(department.last, EXCLUDED.last);

CREATE TABLE department_name
(
    department_id VARCHAR(4),
    department_name TEXT,
    frequency INT,
    first DATE,
    last DATE,
    CONSTRAINT pk_department_name PRIMARY KEY (department_id, department_name),
    CONSTRAINT fk_department_name FOREIGN KEY (department_id) REFERENCES department (department_id)
);

INSERT INTO department_name
(department_id, department_name, frequency, first, last)
select contracting_department_id,
  contracting_department_name,
  count(*) as frequency,
  min(last_modified_date) as first,
  max(last_modified_date) as last
from contract
  where contracting_department_id IS NOT NULL AND
    contract_all.contracting_department_name IS NOT NULL
group by contracting_department_id, contracting_department_name
ON CONFLICT (department_id, department_name)
DO UPDATE SET frequency = department_name.frequency + EXCLUDED.frequency,
first = LEAST(department_name.first, EXCLUDED.first),
last = GREATEST(department_name.last, EXCLUDED.last);

INSERT INTO department_name
(department_id, department_name, frequency, first, last)
select funding_department_id,
  funding_department_name,
  count(*) as frequency,
  min(last_modified_date) as first,
  max(last_modified_date) as last
from contract
  where funding_department_id IS NOT NULL AND
    contract_all.funding_department_name IS NOT NULL
group by funding_department_id, funding_department_name
ON CONFLICT (department_id, department_name)
DO UPDATE SET frequency = department_name.frequency + EXCLUDED.frequency,
first = LEAST(department_name.first, EXCLUDED.first),
last = GREATEST(department_name.last, EXCLUDED.last);

CREATE TABLE agency (
  agency_id VARCHAR(4) CONSTRAINT pk_agency PRIMARY KEY,
  frequency INT,
  first DATE,
  last DATE,
  department_id VARCHAR(4) CONSTRAINT fk_agency_department REFERENCES department (department_id)
);

select * from agency;

INSERT INTO agency
(department_id, agency_id, frequency, first, last)
select contracting_department_id,
  contracting_agency_id,
  count(*) as frequency,
  min(last_modified_date) as first,
  max(last_modified_date) as last
from contract
    where contracting_agency_id IS NOT NULL
group by contracting_department_id, contracting_agency_id
ON CONFLICT (agency_id)
DO UPDATE SET frequency = agency.frequency + EXCLUDED.frequency,
first = LEAST(agency.first, EXCLUDED.first),
last = GREATEST(agency.last, EXCLUDED.last);

INSERT INTO agency
(department_id, agency_id, frequency, first, last)
select funding_department_id,
  funding_agency_id,
  count(*) as frequency,
  min(last_modified_date) as first,
  max(last_modified_date) as last
from contract
    where funding_agency_id IS NOT NULL
group by funding_department_id, funding_agency_id
ON CONFLICT (agency_id)
DO UPDATE SET frequency = agency.frequency + EXCLUDED.frequency,
first = LEAST(agency.first, EXCLUDED.first),
last = GREATEST(agency.last, EXCLUDED.last);

CREATE TABLE agency_name (
  agency_id VARCHAR(4),
  agency_name TEXT,
  frequency INT,
  first DATE,
  last DATE,
  CONSTRAINT pk_agency_name PRIMARY KEY (agency_id, agency_name),
  CONSTRAINT fk_agency_name FOREIGN KEY (agency_id) REFERENCES agency (agency_id)
);

INSERT INTO agency_name
(agency_id, agency_name, frequency, first, last)
select
  contracting_agency_id,
  contracting_agency_name,
  count(*) as frequency,
  min(last_modified_date) as first,
  max(last_modified_date) as last
from contract
    where contracting_agency_id IS NOT NULL AND
      contracting_agency_name IS NOT NULL
group by contracting_agency_id, contracting_agency_name
ON CONFLICT (agency_id, agency_name)
DO UPDATE SET frequency = agency_name.frequency + EXCLUDED.frequency,
first = LEAST(agency_name.first, EXCLUDED.first),
last = GREATEST(agency_name.last, EXCLUDED.last);

INSERT INTO agency_name
(agency_id, agency_name, frequency, first, last)
select
  funding_agency_id,
  funding_agency_name,
  count(*) as frequency,
  min(last_modified_date) as first,
  max(last_modified_date) as last
from contract
    where funding_agency_id IS NOT NULL AND
      funding_agency_name IS NOT NULL
group by funding_agency_id, funding_agency_name
ON CONFLICT (agency_id, agency_name)
DO UPDATE SET frequency = agency_name.frequency + EXCLUDED.frequency,
first = LEAST(agency_name.first, EXCLUDED.first),
last = GREATEST(agency_name.last, EXCLUDED.last);

CREATE TABLE office (
  agency_id    VARCHAR(4) CONSTRAINT fk_office_agency REFERENCES agency (agency_id),
  office_id    VARCHAR(6) NOT NULL,
  frequency INT,
  first DATE,
  last DATE,
  CONSTRAINT pk_office PRIMARY KEY (agency_id, office_id)
);

INSERT INTO office
(agency_id, office_id, frequency, first, last)
select 
  contracting_agency_id,
  contracting_office_id,
  count(*) as frequency,
  min(last_modified_date) as first,
  max(last_modified_date) as last
from contract
    where contracting_agency_id IS NOT NULL AND
      contracting_office_id IS NOT NULL
group by contracting_agency_id, contracting_office_id
ON CONFLICT (agency_id, office_id)
DO UPDATE SET frequency = office.frequency + EXCLUDED.frequency,
first = LEAST(office.first, EXCLUDED.first),
last = GREATEST(office.last, EXCLUDED.last);

INSERT INTO office
(agency_id, office_id, frequency, first, last)
select 
  funding_agency_id,
  funding_office_id,
  count(*) as frequency,
  min(last_modified_date) as first,
  max(last_modified_date) as last
from contract
    where funding_agency_id IS NOT NULL AND
      funding_office_id IS NOT NULL
group by funding_agency_id, funding_office_id
ON CONFLICT (agency_id, office_id)
DO UPDATE SET frequency = office.frequency + EXCLUDED.frequency,
first = LEAST(office.first, EXCLUDED.first),
last = GREATEST(office.last, EXCLUDED.last);

CREATE TABLE office_name (
  agency_id    VARCHAR(4),
  office_id    VARCHAR(6),
  office_name    TEXT,
  frequency INT,
  first DATE,
  last DATE,
  CONSTRAINT pk_office_name PRIMARY KEY (agency_id, office_id, office_name),
  CONSTRAINT fk_office_name FOREIGN KEY (agency_id, office_id) REFERENCES office (agency_id, office_id)
);

INSERT INTO office_name
(agency_id, office_id, office_name, frequency, first, last)
select 
  contracting_agency_id,
  contracting_office_id,
  contracting_office_name,
  count(*) as frequency,
  min(last_modified_date) as first,
  max(last_modified_date) as last
from contract
    where contracting_agency_id IS NOT NULL AND
      contracting_office_id IS NOT NULL AND 
      contracting_office_name IS NOT NULL
group by contracting_agency_id, contracting_office_id, contracting_office_name
ON CONFLICT (agency_id, office_id, office_name)
DO UPDATE SET frequency = office_name.frequency + EXCLUDED.frequency,
first = LEAST(office_name.first, EXCLUDED.first),
last = GREATEST(office_name.last, EXCLUDED.last);

INSERT INTO office_name
(agency_id, office_id, office_name, frequency, first, last)
select 
  funding_agency_id,
  funding_office_id,
  funding_office_name,
  count(*) as frequency,
  min(last_modified_date) as first,
  max(last_modified_date) as last
from contract
    where funding_agency_id IS NOT NULL AND
      funding_office_id IS NOT NULL AND 
      funding_office_name IS NOT NULL
group by funding_agency_id, funding_office_id, funding_office_name
ON CONFLICT (agency_id, office_id, office_name)
DO UPDATE SET frequency = office_name.frequency + EXCLUDED.frequency,
first = LEAST(office_name.first, EXCLUDED.first),
last = GREATEST(office_name.last, EXCLUDED.last);