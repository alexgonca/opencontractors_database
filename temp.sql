create table contracting_agency_top_vendors AS
  select contracting_agency_id,
    contractor_duns_number,
    count(*) as contract_count,
    sum (dollars_obligated) as total_amount
  from contract
  group by contracting_agency_id,
    contractor_duns_number;

create table funding_agency_top_vendors AS
  select funding_agency_id,
    contractor_duns_number,
    count(*) as contract_count,
    sum (dollars_obligated) as total_amount
  from contract
  group by funding_agency_id,
    contractor_duns_number;

create table contracting_agency_top_products_and_services AS
  select contracting_agency_id,
    product_or_service_code,
    count(*) as contract_count,
    sum (dollars_obligated) as total_amount
  from contract
  group by contracting_agency_id,
    product_or_service_code;