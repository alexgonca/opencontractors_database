CREATE DATABASE opencontractors;

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.transaction_status (
  status VARCHAR(8)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/transaction_status/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.funded_by_foreign_entity(
  code CHAR(1),
  short_description STRING,
  long_description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/funded_by_foreign_entity/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contract_action_type (
  code        VARCHAR(8),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contract_action_type/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.reason_for_modification (
  code        VARCHAR(1),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/reason_for_modification/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.type_of_contract_pricing (
  code        CHAR(1),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/type_of_contract_pricing/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.subcontract_plan (
  code        CHAR(1),
  name        STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/subcontract_plan/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.letter_contract (
  code        CHAR(1),
  name        STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/letter_contract/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.multiyear_contract (
  code        CHAR(1),
  name        STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/multiyear_contract/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.performance_based_service_contract (
  code        CHAR(1),
  name        STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/performance_based_service_contract/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contract_financing (
  code        CHAR(1),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contract_financing/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.cost_or_pricing_data (
  code        CHAR(1),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/cost_or_pricing_data/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.cost_accounting_standards_clause (
  code        CHAR(1),
  name        STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/cost_accounting_standards_clause/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.purchase_card_as_payment_method (
  code        CHAR(1),
  name        STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/purchase_card_as_payment_method/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.national_interest_action (
  code        VARCHAR(4),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/national_interest_action/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contingency_humanitarian_peacekeeping_operation (
  code        VARCHAR(1),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contingency_humanitarian_peacekeeping_operation/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.recovery_flag (
  code        STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/recovery_flag/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.type_of_idc (
  code        CHAR(1),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/type_of_idc/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.multiple_or_single_award_idc (
  code        CHAR(1),
  name        STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/multiple_or_single_award_idc/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.ccr_exception (
  code        CHAR(1),
  name        STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/ccr_exception/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.country (
  code VARCHAR(3),
  name STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/country/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.country_variation (
  code VARCHAR(3),
  name STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/country_variation/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.state (
  code VARCHAR(2),
  description STRING,
  status STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/state/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.product_or_service_category (
  code VARCHAR(2),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/product_or_service_category/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.product_or_service_code (
  code VARCHAR(4),
  description STRING,
  start_date DATE,
  final_date DATE,
  full_description STRING,
  excludes STRING,
  notes STRING,
  includes STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/product_or_service_code/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.claimant_program
(
  code VARCHAR(3),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/claimant_program/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.naics
(
  code VARCHAR(6),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/naics/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.information_technology_commercial_item_category (
  code        VARCHAR(1),
  name        STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/information_technology_commercial_item_category/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.gfe_gfp
(
  code CHAR(1),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/gfe_gfp/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.gfe_gfp
(
  code CHAR(1),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/gfe_gfp/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.use_of_epa_designated_products (
  code        VARCHAR(1),
  name        STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/use_of_epa_designated_products/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.recovered_material_clauses
(
  code CHAR(1),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/recovered_material_clauses/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.sea_transportation (
  code        VARCHAR(1),
  name        STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/sea_transportation/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contract_bundling
(
  code CHAR(1),
  name STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contract_bundling/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.manufacturing_organization_type
(
  code CHAR(1),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/manufacturing_organization_type/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.extent_competed
(
  code VARCHAR(3),
  name STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/extent_competed/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.reason_not_competed
(
  code VARCHAR(3),
  name STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/reason_not_competed/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.commercial_item_acquisition_procedures(
  code CHAR(1),
  name STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/commercial_item_acquisition_procedures/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.commercial_item_test_program
(
  code CHAR(1),
  name STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/commercial_item_test_program/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.small_business_competitiveness_demonstration_program
(
  code CHAR(1),
  name VARCHAR(3),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/small_business_competitiveness_demonstration_program/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.a76action
(
  code CHAR(1),
  name VARCHAR(3),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/a76action/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.solicitation_procedures
(
  code VARCHAR(4),
  name STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/solicitation_procedures/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.type_of_set_aside
(
  code VARCHAR(8),
  name STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/type_of_set_aside/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.local_area_set_aside
(
  code CHAR(1),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/local_area_set_aside/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.evaluated_preference
(
  code VARCHAR(4),
  name STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/evaluated_preference/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.fedbizopps
(
  code CHAR(1),
  name STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/fedbizopps/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.research
(
  code VARCHAR(3),
  name STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/research/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.statutory_exception_to_fair_opportunity
(
  code VARCHAR(4),
  name STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/statutory_exception_to_fair_opportunity/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.flag_value(
  code CHAR(1),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/flag_value/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.flag(
  flag_name STRING,
  category STRING,
  display_name STRING,
  description STRING,
  link STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/flag/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.walsh_healy_act
(
  code CHAR(1),
  name STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/walsh_healy_act/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.service_contract_act
(
  code CHAR(1),
  name STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/service_contract_act/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.davis_bacon_act
(
  code CHAR(1),
  name STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/davis_bacon_act/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.clinger_cohen_act
(
  code CHAR(1),
  name STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/clinger_cohen_act/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.interagency_contracting_authority
(
  code CHAR(1),
  name STRING,
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/interagency_contracting_authority/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.business_size(
  code CHAR(1),
  description STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/business_size/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contract_all (
  id BIGINT,
  unique_transaction_id VARCHAR(32),
  last_modified_date DATE,
  transaction_status VARCHAR(8),
  dollars_obligated DECIMAL(13,2),
  base_and_exercised_options_value DECIMAL(13,2),
  base_and_all_options_value DECIMAL(13,2),
  contracting_department_id VARCHAR(4),
  contracting_department_name STRING,
  contracting_agency_id VARCHAR(4),
  contracting_agency_name STRING,
  contracting_agency_id_redundant VARCHAR(4),
  contracting_agency_name_redundant STRING,
  contracting_office_id VARCHAR(6),
  contracting_office_name STRING,
  funding_department_id VARCHAR(4),
  funding_department_name STRING,
  funding_agency_id VARCHAR(4),
  funding_agency_name STRING,
  funding_office_id VARCHAR(6),
  funding_office_name STRING,
  funded_by_foreign_entity CHAR(1),
  signed_date DATE,
  effective_date DATE,
  current_completion_date DATE,
  ultimate_completion_date DATE,
  last_date_to_order DATE,
  contract_action_type VARCHAR(8),
  reason_for_modification CHAR(1),
  type_of_contract_pricing VARCHAR(2),
  price_evaluation_percent_difference FLOAT,
  subcontract_plan CHAR(1),
  letter_contract CHAR(1),
  multiyear_contract CHAR(1),
  performance_based_service_contract CHAR(1),
  major_program_code STRING,
  contingency_humanitarian_peacekeeping_operation CHAR(1),
  contract_financing CHAR(1),
  cost_or_pricing_data CHAR(1),
  cost_accounting_standards_clause CHAR(1),
  descriptionofcontractrequirement STRING,
  purchase_card_as_payment_method CHAR(1),
  number_of_actions INT,
  national_interest_action VARCHAR(4),
  prog_source_agency VARCHAR(2),
  prog_source_account VARCHAR(4),
  prog_source_subacct VARCHAR(3),
  account_title STRING,
  recovery_flag VARCHAR(4),
  type_of_idc CHAR(1),
  multiple_or_single_award_idc CHAR(1),
  program_acronym STRING,
  contractor_name STRING,
  contractor_alternate_name STRING,
  contractor_legal_organization_name STRING,
  contractor_doing_as_business_name STRING,
  contractor_division_name STRING,
  contractor_division_number_or_office_code STRING,
  contractor_enabled STRING,
  contractor_location_disable_flag STRING,
  contractor_ccr_exception CHAR(1),
  contractor_street_address_1 STRING,
  contractor_street_address_2 STRING,
  contractor_street_address_3 STRING,
  contractor_city STRING,
  contractor_state VARCHAR(2),
  contractor_other_location_info STRING,
  contractor_state_other_info_redundant STRING,
  contractor_zip_code STRING,
  contractor_country VARCHAR(3),
  contractor_congressional_district VARCHAR(4),
  contractor_congressional_district_redundant VARCHAR(4),
  contractor_site_code STRING,
  contractor_alternate_site_code STRING,
  contractor_duns_number VARCHAR(9),
  contractor_parent_duns_number VARCHAR(9),
  contractor_phone_number STRING,
  contractor_fax_number STRING,
  contractor_registration_date DATE,
  contractor_renewal_date DATE,
  contractor_parent_name STRING,
  location_code STRING,
  place_of_performance_city STRING,
  place_of_performance_state VARCHAR(2),
  place_of_performance_state_redundant VARCHAR(2),
  place_of_performance_country VARCHAR(3),
  place_of_performance_zip_code STRING,
  place_of_performance_congressional_district VARCHAR(4),
  place_of_performance_congressional_district_redundant VARCHAR(4),
  product_or_service_category VARCHAR(2),
  product_or_service_code VARCHAR(4),
  system_or_equipment_code VARCHAR(4),
  system_or_equipment_description STRING,
  claimant_program VARCHAR(3),
  naics VARCHAR(6),
  information_technology_commercial_item_category CHAR(1),
  gfe_gfp CHAR(1),
  use_of_epa_designated_products CHAR(1),
  recovered_material_clauses CHAR(1),
  sea_transportation CHAR(1),
  contract_bundling CHAR(1),
  consolidated_contract CHAR(1),
  country_of_origin VARCHAR(3),
  place_of_manufacture CHAR(1),
  manufacturing_organization_type CHAR(1),
  agency_id VARCHAR(4),
  agency_name STRING,
  piid STRING,
  modification_number STRING,
  transaction_number STRING,
  fiscal_year VARCHAR(4),
  idv_agency_id VARCHAR(4),
  idv_piid STRING,
  idv_modification_number STRING,
  solicitation_id STRING,
  extent_competed VARCHAR(3),
  reason_not_competed VARCHAR(3),
  number_of_offers_received INT,
  commercial_item_acquisition_procedures CHAR(1),
  commercial_item_test_program CHAR(1),
  small_business_competitiveness_demonstration_program CHAR(1),
  a76action CHAR(1),
  competitive_procedures STRING,
  solicitation_procedures VARCHAR(4),
  type_of_set_aside VARCHAR(8),
  local_area_set_aside CHAR(1),
  evaluated_preference VARCHAR(4),
  fedbizopps CHAR(1),
  research VARCHAR(3),
  statutory_exception_to_fair_opportunity VARCHAR(4),
  contractor_organizational_type STRING,
  contractor_number_of_employees BIGINT,
  contractor_annual_revenue DECIMAL(13,2),
  firm8aflag CHAR(1),
  hubzoneflag CHAR(1),
  sdbflag CHAR(1),
  issbacertifiedsmalldisadvantagedbusiness CHAR(1),
  shelteredworkshopflag CHAR(1),
  hbcuflag CHAR(1),
  educationalinstitutionflag CHAR(1),
  womenownedflag CHAR(1),
  veteranownedflag CHAR(1),
  srdvobflag CHAR(1),
  localgovernmentflag CHAR(1),
  minorityinstitutionflag CHAR(1),
  aiobflag CHAR(1),
  stategovernmentflag CHAR(1),
  federalgovernmentflag CHAR(1),
  minorityownedbusinessflag CHAR(1),
  apaobflag CHAR(1),
  tribalgovernmentflag CHAR(1),
  baobflag CHAR(1),
  naobflag CHAR(1),
  saaobflag CHAR(1),
  nonprofitorganizationflag CHAR(1),
  isothernotforprofitorganization CHAR(1),
  isforprofitorganization CHAR(1),
  isfoundation CHAR(1),
  haobflag CHAR(1),
  ishispanicservicinginstitution CHAR(1),
  emergingsmallbusinessflag CHAR(1),
  hospitalflag CHAR(1),
  contractingofficerbusinesssizedetermination CHAR(1),
  is1862landgrantcollege CHAR(1),
  is1890landgrantcollege CHAR(1),
  is1994landgrantcollege CHAR(1),
  isveterinarycollege CHAR(1),
  isveterinaryhospital CHAR(1),
  isprivateuniversityorcollege CHAR(1),
  isschoolofforestry CHAR(1),
  isstatecontrolledinstitutionofhigherlearning CHAR(1),
  isserviceprovider CHAR(1),
  receivescontracts CHAR(1),
  receivesgrants CHAR(1),
  receivescontractsandgrants CHAR(1),
  isairportauthority CHAR(1),
  iscouncilofgovernments CHAR(1),
  ishousingauthoritiespublicortribal CHAR(1),
  isinterstateentity CHAR(1),
  isplanningcommission CHAR(1),
  isportauthority CHAR(1),
  istransitauthority CHAR(1),
  issubchapterscorporation CHAR(1),
  islimitedliabilitycorporation CHAR(1),
  isforeignownedandlocated CHAR(1),
  isarchitectureandengineering CHAR(1),
  isdotcertifieddisadvantagedbusinessenterprise CHAR(1),
  iscitylocalgovernment CHAR(1),
  iscommunitydevelopedcorporationownedfirm CHAR(1),
  iscommunitydevelopmentcorporation CHAR(1),
  isconstructionfirm CHAR(1),
  ismanufacturerofgoods CHAR(1),
  iscorporateentitynottaxexempt CHAR(1),
  iscountylocalgovernment CHAR(1),
  isdomesticshelter CHAR(1),
  isfederalgovernmentagency CHAR(1),
  isfederallyfundedresearchanddevelopmentcorp CHAR(1),
  isforeigngovernment CHAR(1),
  isindiantribe CHAR(1),
  isintermunicipallocalgovernment CHAR(1),
  isinternationalorganization CHAR(1),
  islaborsurplusareafirm CHAR(1),
  islocalgovernmentowned CHAR(1),
  ismunicipalitylocalgovernment CHAR(1),
  isnativehawaiianownedorganizationorfirm CHAR(1),
  isotherbusinessororganization CHAR(1),
  isotherminorityowned CHAR(1),
  ispartnershiporlimitedliabilitypartnership CHAR(1),
  isschooldistrictlocalgovernment CHAR(1),
  issmallagriculturalcooperative CHAR(1),
  issoleproprietorship CHAR(1),
  istownshiplocalgovernment CHAR(1),
  istriballyownedfirm CHAR(1),
  istribalcollege CHAR(1),
  isalaskannativeownedcorporationorfirm CHAR(1),
  iscorporateentitytaxexempt CHAR(1),
  iswomenownedsmallbusiness CHAR(1),
  isecondisadvwomenownedsmallbusiness CHAR(1),
  isjointventurewomenownedsmallbusiness CHAR(1),
  isjointventureecondisadvwomenownedsmallbusiness CHAR(1),
  walsh_healy_act CHAR(1),
  service_contract_act CHAR(1),
  davis_bacon_act CHAR(1),
  clinger_cohen_act CHAR(1),
  other_statutory_authority STRING,
  prime_awardee_executive1 STRING,
  prime_awardee_executive1_compensation DECIMAL(13,2),
  prime_awardee_executive2 STRING,
  prime_awardee_executive2_compensation DECIMAL(13,2),
  prime_awardee_executive3 STRING,
  prime_awardee_executive3_compensation DECIMAL(13,2),
  prime_awardee_executive4 STRING,
  prime_awardee_executive4_compensation DECIMAL(13,2),
  prime_awardee_executive5 STRING,
  prime_awardee_executive5_compensation DECIMAL(13,2),
  interagency_contracting_authority CHAR(1)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contract_all/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contract (
  id BIGINT,
  unique_transaction_id VARCHAR(32),
  last_modified_date DATE,
  transaction_status VARCHAR(8),
  dollars_obligated DECIMAL(13,2),
  base_and_exercised_options_value DECIMAL(13,2),
  base_and_all_options_value DECIMAL(13,2),
  contracting_department_id VARCHAR(4),
  contracting_department_name STRING,
  contracting_agency_id VARCHAR(4),
  contracting_agency_name STRING,
  contracting_agency_id_redundant VARCHAR(4),
  contracting_agency_name_redundant STRING,
  contracting_office_id VARCHAR(6),
  contracting_office_name STRING,
  funding_department_id VARCHAR(4),
  funding_department_name STRING,
  funding_agency_id VARCHAR(4),
  funding_agency_name STRING,
  funding_office_id VARCHAR(6),
  funding_office_name STRING,
  funded_by_foreign_entity CHAR(1),
  signed_date DATE,
  effective_date DATE,
  current_completion_date DATE,
  ultimate_completion_date DATE,
  last_date_to_order DATE,
  contract_action_type VARCHAR(8),
  reason_for_modification CHAR(1),
  type_of_contract_pricing VARCHAR(2),
  price_evaluation_percent_difference FLOAT,
  subcontract_plan CHAR(1),
  letter_contract CHAR(1),
  multiyear_contract CHAR(1),
  performance_based_service_contract CHAR(1),
  major_program_code STRING,
  contingency_humanitarian_peacekeeping_operation CHAR(1),
  contract_financing CHAR(1),
  cost_or_pricing_data CHAR(1),
  cost_accounting_standards_clause CHAR(1),
  descriptionofcontractrequirement STRING,
  purchase_card_as_payment_method CHAR(1),
  number_of_actions INT,
  national_interest_action VARCHAR(4),
  prog_source_agency VARCHAR(2),
  prog_source_account VARCHAR(4),
  prog_source_subacct VARCHAR(3),
  account_title STRING,
  recovery_flag VARCHAR(4),
  type_of_idc CHAR(1),
  multiple_or_single_award_idc CHAR(1),
  program_acronym STRING,
  contractor_name STRING,
  contractor_alternate_name STRING,
  contractor_legal_organization_name STRING,
  contractor_doing_as_business_name STRING,
  contractor_division_name STRING,
  contractor_division_number_or_office_code STRING,
  contractor_enabled STRING,
  contractor_location_disable_flag STRING,
  contractor_ccr_exception CHAR(1),
  contractor_street_address_1 STRING,
  contractor_street_address_2 STRING,
  contractor_street_address_3 STRING,
  contractor_city STRING,
  contractor_state VARCHAR(2),
  contractor_other_location_info STRING,
  contractor_state_other_info_redundant STRING,
  contractor_zip_code STRING,
  contractor_country VARCHAR(3),
  contractor_congressional_district VARCHAR(4),
  contractor_congressional_district_redundant VARCHAR(4),
  contractor_site_code STRING,
  contractor_alternate_site_code STRING,
  contractor_duns_number VARCHAR(9),
  contractor_parent_duns_number VARCHAR(9),
  contractor_phone_number STRING,
  contractor_fax_number STRING,
  contractor_registration_date DATE,
  contractor_renewal_date DATE,
  contractor_parent_name STRING,
  location_code STRING,
  place_of_performance_city STRING,
  place_of_performance_state VARCHAR(2),
  place_of_performance_state_redundant VARCHAR(2),
  place_of_performance_country VARCHAR(3),
  place_of_performance_zip_code STRING,
  place_of_performance_congressional_district VARCHAR(4),
  place_of_performance_congressional_district_redundant VARCHAR(4),
  product_or_service_category VARCHAR(2),
  product_or_service_code VARCHAR(4),
  system_or_equipment_code VARCHAR(4),
  system_or_equipment_description STRING,
  claimant_program VARCHAR(3),
  naics VARCHAR(6),
  information_technology_commercial_item_category CHAR(1),
  gfe_gfp CHAR(1),
  use_of_epa_designated_products CHAR(1),
  recovered_material_clauses CHAR(1),
  sea_transportation CHAR(1),
  contract_bundling CHAR(1),
  consolidated_contract CHAR(1),
  country_of_origin VARCHAR(3),
  place_of_manufacture CHAR(1),
  manufacturing_organization_type CHAR(1),
  agency_id VARCHAR(4),
  agency_name STRING,
  piid STRING,
  modification_number STRING,
  transaction_number STRING,
  fiscal_year VARCHAR(4),
  idv_agency_id VARCHAR(4),
  idv_piid STRING,
  idv_modification_number STRING,
  solicitation_id STRING,
  extent_competed VARCHAR(3),
  reason_not_competed VARCHAR(3),
  number_of_offers_received INT,
  commercial_item_acquisition_procedures CHAR(1),
  commercial_item_test_program CHAR(1),
  small_business_competitiveness_demonstration_program CHAR(1),
  a76action CHAR(1),
  competitive_procedures STRING,
  solicitation_procedures VARCHAR(4),
  type_of_set_aside VARCHAR(8),
  local_area_set_aside CHAR(1),
  evaluated_preference VARCHAR(4),
  fedbizopps CHAR(1),
  research VARCHAR(3),
  statutory_exception_to_fair_opportunity VARCHAR(4),
  contractor_organizational_type STRING,
  contractor_number_of_employees BIGINT,
  contractor_annual_revenue DECIMAL(13,2),
  firm8aflag CHAR(1),
  hubzoneflag CHAR(1),
  sdbflag CHAR(1),
  issbacertifiedsmalldisadvantagedbusiness CHAR(1),
  shelteredworkshopflag CHAR(1),
  hbcuflag CHAR(1),
  educationalinstitutionflag CHAR(1),
  womenownedflag CHAR(1),
  veteranownedflag CHAR(1),
  srdvobflag CHAR(1),
  localgovernmentflag CHAR(1),
  minorityinstitutionflag CHAR(1),
  aiobflag CHAR(1),
  stategovernmentflag CHAR(1),
  federalgovernmentflag CHAR(1),
  minorityownedbusinessflag CHAR(1),
  apaobflag CHAR(1),
  tribalgovernmentflag CHAR(1),
  baobflag CHAR(1),
  naobflag CHAR(1),
  saaobflag CHAR(1),
  nonprofitorganizationflag CHAR(1),
  isothernotforprofitorganization CHAR(1),
  isforprofitorganization CHAR(1),
  isfoundation CHAR(1),
  haobflag CHAR(1),
  ishispanicservicinginstitution CHAR(1),
  emergingsmallbusinessflag CHAR(1),
  hospitalflag CHAR(1),
  contractingofficerbusinesssizedetermination CHAR(1),
  is1862landgrantcollege CHAR(1),
  is1890landgrantcollege CHAR(1),
  is1994landgrantcollege CHAR(1),
  isveterinarycollege CHAR(1),
  isveterinaryhospital CHAR(1),
  isprivateuniversityorcollege CHAR(1),
  isschoolofforestry CHAR(1),
  isstatecontrolledinstitutionofhigherlearning CHAR(1),
  isserviceprovider CHAR(1),
  receivescontracts CHAR(1),
  receivesgrants CHAR(1),
  receivescontractsandgrants CHAR(1),
  isairportauthority CHAR(1),
  iscouncilofgovernments CHAR(1),
  ishousingauthoritiespublicortribal CHAR(1),
  isinterstateentity CHAR(1),
  isplanningcommission CHAR(1),
  isportauthority CHAR(1),
  istransitauthority CHAR(1),
  issubchapterscorporation CHAR(1),
  islimitedliabilitycorporation CHAR(1),
  isforeignownedandlocated CHAR(1),
  isarchitectureandengineering CHAR(1),
  isdotcertifieddisadvantagedbusinessenterprise CHAR(1),
  iscitylocalgovernment CHAR(1),
  iscommunitydevelopedcorporationownedfirm CHAR(1),
  iscommunitydevelopmentcorporation CHAR(1),
  isconstructionfirm CHAR(1),
  ismanufacturerofgoods CHAR(1),
  iscorporateentitynottaxexempt CHAR(1),
  iscountylocalgovernment CHAR(1),
  isdomesticshelter CHAR(1),
  isfederalgovernmentagency CHAR(1),
  isfederallyfundedresearchanddevelopmentcorp CHAR(1),
  isforeigngovernment CHAR(1),
  isindiantribe CHAR(1),
  isintermunicipallocalgovernment CHAR(1),
  isinternationalorganization CHAR(1),
  islaborsurplusareafirm CHAR(1),
  islocalgovernmentowned CHAR(1),
  ismunicipalitylocalgovernment CHAR(1),
  isnativehawaiianownedorganizationorfirm CHAR(1),
  isotherbusinessororganization CHAR(1),
  isotherminorityowned CHAR(1),
  ispartnershiporlimitedliabilitypartnership CHAR(1),
  isschooldistrictlocalgovernment CHAR(1),
  issmallagriculturalcooperative CHAR(1),
  issoleproprietorship CHAR(1),
  istownshiplocalgovernment CHAR(1),
  istriballyownedfirm CHAR(1),
  istribalcollege CHAR(1),
  isalaskannativeownedcorporationorfirm CHAR(1),
  iscorporateentitytaxexempt CHAR(1),
  iswomenownedsmallbusiness CHAR(1),
  isecondisadvwomenownedsmallbusiness CHAR(1),
  isjointventurewomenownedsmallbusiness CHAR(1),
  isjointventureecondisadvwomenownedsmallbusiness CHAR(1),
  walsh_healy_act CHAR(1),
  service_contract_act CHAR(1),
  davis_bacon_act CHAR(1),
  clinger_cohen_act CHAR(1),
  other_statutory_authority STRING,
  prime_awardee_executive1 STRING,
  prime_awardee_executive1_compensation DECIMAL(13,2),
  prime_awardee_executive2 STRING,
  prime_awardee_executive2_compensation DECIMAL(13,2),
  prime_awardee_executive3 STRING,
  prime_awardee_executive3_compensation DECIMAL(13,2),
  prime_awardee_executive4 STRING,
  prime_awardee_executive4_compensation DECIMAL(13,2),
  prime_awardee_executive5 STRING,
  prime_awardee_executive5_compensation DECIMAL(13,2),
  interagency_contracting_authority CHAR(1)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contract/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.department (
  department_id VARCHAR(4),
  frequency     INT,
  first         DATE,
  last          DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/department/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.department_name (
  id              INT,
  department_id   VARCHAR(4),
  department_name STRING,
  frequency       INT,
  first           DATE,
  last            DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/department_name/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.agency (
  agency_id     VARCHAR(4),
  frequency     INT,
  first         DATE,
  last          DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/agency/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.agency_department (
  id          INT,
  agency_id   VARCHAR(4),
  department_id VARCHAR(4),
  frequency   INT,
  first       DATE,
  last        DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/agency_department/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.agency_name (
  id          INT,
  agency_id   VARCHAR(4),
  agency_name STRING,
  frequency   INT,
  first       DATE,
  last        DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/agency_name/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.office (
  id        INT,
  agency_id VARCHAR(4),
  office_id VARCHAR(6),
  frequency INT,
  first     DATE,
  last      DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/office/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.office_name (
  id          INT,
  agency_id   VARCHAR(4),
  office_id   VARCHAR(6),
  office_name STRING,
  frequency   INT,
  first       DATE,
  last        DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/office_name/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor (
  duns_number VARCHAR(9),
  frequency   INT,
  first       DATE,
  last        DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_name (
  id          INT,
  duns_number VARCHAR(9),
  name        STRING,
  type        VARCHAR(23),
  frequency   INT,
  first       DATE,
  last        DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_name/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_division_name (
  id INT,
  duns_number   VARCHAR(9),
  division_name STRING,
  frequency     INT,
  first         DATE,
  last          DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_division_name/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_division_number_or_office_code (
  id INT,
  duns_number                    VARCHAR(9),
  division_number_or_office_code STRING,
  first                          DATE,
  last                           DATE,
  frequency                      INT
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_division_number_or_office_code/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_enabled (
  id INT,
  duns_number VARCHAR(9),
  enabled     STRING,
  frequency   INT,
  first       DATE,
  last        DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_enabled/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_location_disable_flag (
  id INT,
  duns_number           VARCHAR(9),
  location_disable_flag STRING,
  frequency             INT,
  first                 DATE,
  last                  DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_location_disable_flag/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_parent (
  id INT,
  duns_number        VARCHAR(9),
  parent_duns_number VARCHAR(9),
  frequency          INT,
  first              DATE,
  last               DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_parent/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_registration_date (
  id INT,
  duns_number       VARCHAR(9),
  registration_date DATE,
  frequency         INT,
  first             DATE,
  last              DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_registration_date/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_renewal_date (
  id INT,
  duns_number  VARCHAR(9),
  renewal_date DATE,
  frequency    INT,
  first        DATE,
  last         DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_renewal_date/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_phone_number (
  id INT,
  duns_number  VARCHAR(9),
  phone_number STRING,
  frequency    INT,
  first        DATE,
  last         DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_phone_number/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_fax_number (
  id INT,
  duns_number VARCHAR(9),
  fax_number  STRING,
  frequency   INT,
  first       DATE,
  last        DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_fax_number/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_organizational_type (
  id INT,
  duns_number         VARCHAR(9),
  organizational_type STRING,
  frequency           INT,
  first               DATE,
  last                DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_organizational_type/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_number_of_employees (
  id INT,
  duns_number         VARCHAR(9),
  number_of_employees BIGINT,
  frequency           INT,
  first               DATE,
  last                DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_number_of_employees/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_annual_revenue (
  id INT,
  duns_number         VARCHAR(9),
  annual_revenue DECIMAL(13,2),
  frequency           INT,
  first               DATE,
  last                DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_annual_revenue/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_business_size (
  id INT,
  duns_number    VARCHAR(9),
  business_size CHAR(1),
  frequency      INT,
  first          DATE,
  last           DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_business_size/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_ccr_exception (
  id INT,
  duns_number    VARCHAR(9),
  ccr_exception CHAR(1),
  frequency      INT,
  first          DATE,
  last           DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_ccr_exception/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_site_code (
  id INT,
  duns_number    VARCHAR(9),
  site_code STRING,
  frequency      INT,
  first          DATE,
  last           DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_site_code/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_alternate_site_code (
  id INT,
  duns_number    VARCHAR(9),
  alternate_site_code STRING,
  frequency      INT,
  first          DATE,
  last           DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_alternate_site_code/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_address (
  id                     INT,
  duns_number            VARCHAR(9),
  street_address_1       STRING      ,
  street_address_2       STRING      ,
  street_address_3       STRING      ,
  city                   STRING      ,
  state                  VARCHAR(2),
  other_location_info    STRING      ,
  zip_code               STRING      ,
  country_code           VARCHAR(3),
  congressional_district STRING      ,
  frequency              INT,
  first                  DATE,
  last                   DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_address/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_flag (
  id INT,
  duns_number VARCHAR(9),
  flag_name   VARCHAR(50),
  flag_value  CHAR(1),
  frequency   INT,
  first       DATE,
  last        DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_flag/'
TBLPROPERTIES ('has_encrypted_data'='false');

CREATE EXTERNAL TABLE IF NOT EXISTS opencontractors.contractor_flag (
  id INT,
  duns_number VARCHAR(9),
  flag_name   VARCHAR(50),
  flag_value  CHAR(1),
  frequency   INT,
  first       DATE,
  last        DATE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://opencontractors/contractor_flag/'
TBLPROPERTIES ('has_encrypted_data'='false');