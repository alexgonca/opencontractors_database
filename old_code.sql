DROP TABLE IF EXISTS temp_contract;

CREATE TABLE IF NOT EXISTS temp_contract (
  unique_transaction_id VARCHAR(32),
  transaction_status                               TEXT,
  dollarsobligated                                 TEXT,
  baseandexercisedoptionsvalue                     TEXT,
  baseandalloptionsvalue                           TEXT,
  maj_agency_cat                                   TEXT,
  mod_agency                                       TEXT,
  maj_fund_agency_cat                              TEXT,
  contractingofficeagencyid                        TEXT,
  contractingofficeid                              TEXT,
  fundingrequestingagencyid                        TEXT,
  fundingrequestingofficeid                        TEXT,
  fundedbyforeignentity                            TEXT,
  signeddate                                       TEXT,
  effectivedate                                    TEXT,
  currentcompletiondate                            TEXT,
  ultimatecompletiondate                           TEXT,
  lastdatetoorder                                  TEXT,
  contractactiontype                               TEXT,
  reasonformodification                            TEXT,
  typeofcontractpricing                            TEXT,
  priceevaluationpercentdifference                 TEXT,
  subcontractplan                                  TEXT,
  lettercontract                                   TEXT,
  multiyearcontract                                TEXT,
  performancebasedservicecontract                  TEXT,
  majorprogramcode                                 TEXT,
  contingencyhumanitarianpeacekeepingoperation     TEXT,
  contractfinancing                                TEXT,
  costorpricingdata                                TEXT,
  costaccountingstandardsclause                    TEXT,
  descriptionofcontractrequirement                 TEXT,
  purchasecardaspaymentmethod                      TEXT,
  numberofactions                                  TEXT,
  nationalinterestactioncode                       TEXT,
  progsourceagency                                 TEXT,
  progsourceaccount                                TEXT,
  progsourcesubacct                                TEXT,
  account_title                                    TEXT,
  rec_flag                                         TEXT,
  typeofidc                                        TEXT,
  multipleorsingleawardidc                         TEXT,
  programacronym                                   TEXT,
  vendorname                                       TEXT,
  vendoralternatename                              TEXT,
  vendorlegalorganizationname                      TEXT,
  vendordoingasbusinessname                        TEXT,
  divisionname                                     TEXT,
  divisionnumberorofficecode                       TEXT,
  vendorenabled                                    TEXT,
  vendorlocationdisableflag                        TEXT,
  ccrexception                                     TEXT,
  streetaddress                                    TEXT,
  streetaddress2                                   TEXT,
  streetaddress3                                   TEXT,
  city                                             TEXT,
  state                                            TEXT,
  zipcode                                          TEXT,
  vendorcountrycode                                TEXT,
  vendor_state_code                                TEXT,
  vendor_cd                                        TEXT,
  congressionaldistrict                            TEXT,
  vendorsitecode                                   TEXT,
  vendoralternatesitecode                          TEXT,
  dunsnumber                                       TEXT,
  parentdunsnumber                                 TEXT,
  phoneno                                          TEXT,
  faxno                                            TEXT,
  registrationdate                                 TEXT,
  renewaldate                                      TEXT,
  mod_parent                                       TEXT,
  locationcode                                     TEXT,
  statecode                                        TEXT,
  PlaceofPerformanceCity                           TEXT,
  pop_state_code                                   TEXT,
  placeofperformancecountrycode                    TEXT,
  placeofperformancezipcode                        TEXT,
  pop_cd                                           TEXT,
  placeofperformancecongressionaldistrict          TEXT,
  psc_cat                                          TEXT,
  productorservicecode                             TEXT,
  systemequipmentcode                              TEXT,
  claimantprogramcode                              TEXT,
  principalnaicscode                               TEXT,
  informationtechnologycommercialitemcategory      TEXT,
  gfe_gfp                                          TEXT,
  useofepadesignatedproducts                       TEXT,
  recoveredmaterialclauses                         TEXT,
  seatransportation                                TEXT,
  contractbundling                                 TEXT,
  consolidatedcontract                             TEXT,
  countryoforigin                                  TEXT,
  placeofmanufacture                               TEXT,
  manufacturingorganizationtype                    TEXT,
  agencyid                                         TEXT,
  piid                                             TEXT,
  modnumber                                        TEXT,
  transactionnumber                                TEXT,
  fiscal_year                                      TEXT,
  idvagencyid                                      TEXT,
  idvpiid                                          TEXT,
  idvmodificationnumber                            TEXT,
  solicitationid                                   TEXT,
  extentcompeted                                   TEXT,
  reasonnotcompeted                                TEXT,
  numberofoffersreceived                           TEXT,
  commercialitemacquisitionprocedures              TEXT,
  commercialitemtestprogram                        TEXT,
  smallbusinesscompetitivenessdemonstrationprogram TEXT,
  a76action                                        TEXT,
  competitiveprocedures                            TEXT,
  solicitationprocedures                           TEXT,
  typeofsetaside                                   TEXT,
  localareasetaside                                TEXT,
  evaluatedpreference                              TEXT,
  fedbizopps                                       TEXT,
  research                                         TEXT,
  statutoryexceptiontofairopportunity              TEXT,
  organizationaltype                               TEXT,
  numberofemployees                                TEXT,
  annualrevenue                                    TEXT,
  firm8aflag                                       TEXT,
  hubzoneflag                                      TEXT,
  sdbflag                                          TEXT,
  issbacertifiedsmalldisadvantagedbusiness         TEXT,
  shelteredworkshopflag                            TEXT,
  hbcuflag                                         TEXT,
  educationalinstitutionflag                       TEXT,
  womenownedflag                                   TEXT,
  veteranownedflag                                 TEXT,
  srdvobflag                                       TEXT,
  localgovernmentflag                              TEXT,
  minorityinstitutionflag                          TEXT,
  aiobflag                                         TEXT,
  stategovernmentflag                              TEXT,
  federalgovernmentflag                            TEXT,
  minorityownedbusinessflag                        TEXT,
  apaobflag                                        TEXT,
  tribalgovernmentflag                             TEXT,
  baobflag                                         TEXT,
  naobflag                                         TEXT,
  saaobflag                                        TEXT,
  nonprofitorganizationflag                        TEXT,
  isothernotforprofitorganization                  TEXT,
  isforprofitorganization                          TEXT,
  isfoundation                                     TEXT,
  haobflag                                         TEXT,
  ishispanicservicinginstitution                   TEXT,
  emergingsmallbusinessflag                        TEXT,
  hospitalflag                                     TEXT,
  contractingofficerbusinesssizedetermination      TEXT,
  is1862landgrantcollege                           TEXT,
  is1890landgrantcollege                           TEXT,
  is1994landgrantcollege                           TEXT,
  isveterinarycollege                              TEXT,
  isveterinaryhospital                             TEXT,
  isprivateuniversityorcollege                     TEXT,
  isschoolofforestry                               TEXT,
  isstatecontrolledinstitutionofhigherlearning     TEXT,
  isserviceprovider                                TEXT,
  receivescontracts                                TEXT,
  receivesgrants                                   TEXT,
  receivescontractsandgrants                       TEXT,
  isairportauthority                               TEXT,
  iscouncilofgovernments                           TEXT,
  ishousingauthoritiespublicortribal               TEXT,
  isinterstateentity                               TEXT,
  isplanningcommission                             TEXT,
  isportauthority                                  TEXT,
  istransitauthority                               TEXT,
  issubchapterscorporation                         TEXT,
  islimitedliabilitycorporation                    TEXT,
  isforeignownedandlocated                         TEXT,
  isarchitectureandengineering                     TEXT,
  isdotcertifieddisadvantagedbusinessenterprise    TEXT,
  iscitylocalgovernment                            TEXT,
  iscommunitydevelopedcorporationownedfirm         TEXT,
  iscommunitydevelopmentcorporation                TEXT,
  isconstructionfirm                               TEXT,
  ismanufacturerofgoods                            TEXT,
  iscorporateentitynottaxexempt                    TEXT,
  iscountylocalgovernment                          TEXT,
  isdomesticshelter                                TEXT,
  isfederalgovernmentagency                        TEXT,
  isfederallyfundedresearchanddevelopmentcorp      TEXT,
  isforeigngovernment                              TEXT,
  isindiantribe                                    TEXT,
  isintermunicipallocalgovernment                  TEXT,
  isinternationalorganization                      TEXT,
  islaborsurplusareafirm                           TEXT,
  islocalgovernmentowned                           TEXT,
  ismunicipalitylocalgovernment                    TEXT,
  isnativehawaiianownedorganizationorfirm          TEXT,
  isotherbusinessororganization                    TEXT,
  isotherminorityowned                             TEXT,
  ispartnershiporlimitedliabilitypartnership       TEXT,
  isschooldistrictlocalgovernment                  TEXT,
  issmallagriculturalcooperative                   TEXT,
  issoleproprietorship                             TEXT,
  istownshiplocalgovernment                        TEXT,
  istriballyownedfirm                              TEXT,
  istribalcollege                                  TEXT,
  isalaskannativeownedcorporationorfirm            TEXT,
  iscorporateentitytaxexempt                       TEXT,
  iswomenownedsmallbusiness                        TEXT,
  isecondisadvwomenownedsmallbusiness              TEXT,
  isjointventurewomenownedsmallbusiness            TEXT,
  isjointventureecondisadvwomenownedsmallbusiness  TEXT,
  walshhealyact                                    TEXT,
  servicecontractact                               TEXT,
  davisbaconact                                    TEXT,
  clingercohenact                                  TEXT,
  otherstatutoryauthority                          TEXT,
  prime_awardee_executive1                         TEXT,
  prime_awardee_executive1_compensation            TEXT,
  prime_awardee_executive2                         TEXT,
  prime_awardee_executive2_compensation            TEXT,
  prime_awardee_executive3                         TEXT,
  prime_awardee_executive3_compensation            TEXT,
  prime_awardee_executive4                         TEXT,
  prime_awardee_executive4_compensation            TEXT,
  prime_awardee_executive5                         TEXT,
  prime_awardee_executive5_compensation            TEXT,
  interagencycontractingauthority                  TEXT,
  last_modified_date VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS contract_csv (
  id SERIAL CONSTRAINT pk_contract_csv_id PRIMARY KEY,
  unique_transaction_id VARCHAR(32) NOT NULL,
  last_modified_date DATE NOT NULL,
  CONSTRAINT u_contract_csv unique (unique_transaction_id, last_modified_date),
  query_progress INT,
  transaction_status                               TEXT,
  dollarsobligated                                 TEXT,
  baseandexercisedoptionsvalue                     TEXT,
  baseandalloptionsvalue                           TEXT,
  maj_agency_cat                                   TEXT,
  mod_agency                                       TEXT,
  maj_fund_agency_cat                              TEXT,
  contractingofficeagencyid                        TEXT,
  contractingofficeid                              TEXT,
  fundingrequestingagencyid                        TEXT,
  fundingrequestingofficeid                        TEXT,
  fundedbyforeignentity                            TEXT,
  signeddate                                       TEXT,
  effectivedate                                    TEXT,
  currentcompletiondate                            TEXT,
  ultimatecompletiondate                           TEXT,
  lastdatetoorder                                  TEXT,
  contractactiontype                               TEXT,
  reasonformodification                            TEXT,
  typeofcontractpricing                            TEXT,
  priceevaluationpercentdifference                 TEXT,
  subcontractplan                                  TEXT,
  lettercontract                                   TEXT,
  multiyearcontract                                TEXT,
  performancebasedservicecontract                  TEXT,
  majorprogramcode                                 TEXT,
  contingencyhumanitarianpeacekeepingoperation     TEXT,
  contractfinancing                                TEXT,
  costorpricingdata                                TEXT,
  costaccountingstandardsclause                    TEXT,
  descriptionofcontractrequirement                 TEXT,
  purchasecardaspaymentmethod                      TEXT,
  numberofactions                                  TEXT,
  nationalinterestactioncode                       TEXT,
  progsourceagency                                 TEXT,
  progsourceaccount                                TEXT,
  progsourcesubacct                                TEXT,
  account_title                                    TEXT,
  rec_flag                                         TEXT,
  typeofidc                                        TEXT,
  multipleorsingleawardidc                         TEXT,
  programacronym                                   TEXT,
  vendorname                                       TEXT,
  vendoralternatename                              TEXT,
  vendorlegalorganizationname                      TEXT,
  vendordoingasbusinessname                        TEXT,
  divisionname                                     TEXT,
  divisionnumberorofficecode                       TEXT,
  vendorenabled                                    TEXT,
  vendorlocationdisableflag                        TEXT,
  ccrexception                                     TEXT,
  streetaddress                                    TEXT,
  streetaddress2                                   TEXT,
  streetaddress3                                   TEXT,
  city                                             TEXT,
  state                                            TEXT,
  zipcode                                          TEXT,
  vendorcountrycode                                TEXT,
  vendor_state_code                                TEXT,
  vendor_cd                                        TEXT,
  congressionaldistrict                            TEXT,
  vendorsitecode                                   TEXT,
  vendoralternatesitecode                          TEXT,
  dunsnumber                                       TEXT,
  parentdunsnumber                                 TEXT,
  phoneno                                          TEXT,
  faxno                                            TEXT,
  registrationdate                                 TEXT,
  renewaldate                                      TEXT,
  mod_parent                                       TEXT,
  locationcode                                     TEXT,
  statecode                                        TEXT,
  PlaceofPerformanceCity                           TEXT,
  pop_state_code                                   TEXT,
  placeofperformancecountrycode                    TEXT,
  placeofperformancezipcode                        TEXT,
  pop_cd                                           TEXT,
  placeofperformancecongressionaldistrict          TEXT,
  psc_cat                                          TEXT,
  productorservicecode                             TEXT,
  systemequipmentcode                              TEXT,
  claimantprogramcode                              TEXT,
  principalnaicscode                               TEXT,
  informationtechnologycommercialitemcategory      TEXT,
  gfe_gfp                                          TEXT,
  useofepadesignatedproducts                       TEXT,
  recoveredmaterialclauses                         TEXT,
  seatransportation                                TEXT,
  contractbundling                                 TEXT,
  consolidatedcontract                             TEXT,
  countryoforigin                                  TEXT,
  placeofmanufacture                               TEXT,
  manufacturingorganizationtype                    TEXT,
  agencyid                                         TEXT,
  piid                                             TEXT,
  modnumber                                        TEXT,
  transactionnumber                                TEXT,
  fiscal_year                                      TEXT,
  idvagencyid                                      TEXT,
  idvpiid                                          TEXT,
  idvmodificationnumber                            TEXT,
  solicitationid                                   TEXT,
  extentcompeted                                   TEXT,
  reasonnotcompeted                                TEXT,
  numberofoffersreceived                           TEXT,
  commercialitemacquisitionprocedures              TEXT,
  commercialitemtestprogram                        TEXT,
  smallbusinesscompetitivenessdemonstrationprogram TEXT,
  a76action                                        TEXT,
  competitiveprocedures                            TEXT,
  solicitationprocedures                           TEXT,
  typeofsetaside                                   TEXT,
  localareasetaside                                TEXT,
  evaluatedpreference                              TEXT,
  fedbizopps                                       TEXT,
  research                                         TEXT,
  statutoryexceptiontofairopportunity              TEXT,
  organizationaltype                               TEXT,
  numberofemployees                                TEXT,
  annualrevenue                                    TEXT,
  firm8aflag                                       TEXT,
  hubzoneflag                                      TEXT,
  sdbflag                                          TEXT,
  issbacertifiedsmalldisadvantagedbusiness         TEXT,
  shelteredworkshopflag                            TEXT,
  hbcuflag                                         TEXT,
  educationalinstitutionflag                       TEXT,
  womenownedflag                                   TEXT,
  veteranownedflag                                 TEXT,
  srdvobflag                                       TEXT,
  localgovernmentflag                              TEXT,
  minorityinstitutionflag                          TEXT,
  aiobflag                                         TEXT,
  stategovernmentflag                              TEXT,
  federalgovernmentflag                            TEXT,
  minorityownedbusinessflag                        TEXT,
  apaobflag                                        TEXT,
  tribalgovernmentflag                             TEXT,
  baobflag                                         TEXT,
  naobflag                                         TEXT,
  saaobflag                                        TEXT,
  nonprofitorganizationflag                        TEXT,
  isothernotforprofitorganization                  TEXT,
  isforprofitorganization                          TEXT,
  isfoundation                                     TEXT,
  haobflag                                         TEXT,
  ishispanicservicinginstitution                   TEXT,
  emergingsmallbusinessflag                        TEXT,
  hospitalflag                                     TEXT,
  contractingofficerbusinesssizedetermination      TEXT,
  is1862landgrantcollege                           TEXT,
  is1890landgrantcollege                           TEXT,
  is1994landgrantcollege                           TEXT,
  isveterinarycollege                              TEXT,
  isveterinaryhospital                             TEXT,
  isprivateuniversityorcollege                     TEXT,
  isschoolofforestry                               TEXT,
  isstatecontrolledinstitutionofhigherlearning     TEXT,
  isserviceprovider                                TEXT,
  receivescontracts                                TEXT,
  receivesgrants                                   TEXT,
  receivescontractsandgrants                       TEXT,
  isairportauthority                               TEXT,
  iscouncilofgovernments                           TEXT,
  ishousingauthoritiespublicortribal               TEXT,
  isinterstateentity                               TEXT,
  isplanningcommission                             TEXT,
  isportauthority                                  TEXT,
  istransitauthority                               TEXT,
  issubchapterscorporation                         TEXT,
  islimitedliabilitycorporation                    TEXT,
  isforeignownedandlocated                         TEXT,
  isarchitectureandengineering                     TEXT,
  isdotcertifieddisadvantagedbusinessenterprise    TEXT,
  iscitylocalgovernment                            TEXT,
  iscommunitydevelopedcorporationownedfirm         TEXT,
  iscommunitydevelopmentcorporation                TEXT,
  isconstructionfirm                               TEXT,
  ismanufacturerofgoods                            TEXT,
  iscorporateentitynottaxexempt                    TEXT,
  iscountylocalgovernment                          TEXT,
  isdomesticshelter                                TEXT,
  isfederalgovernmentagency                        TEXT,
  isfederallyfundedresearchanddevelopmentcorp      TEXT,
  isforeigngovernment                              TEXT,
  isindiantribe                                    TEXT,
  isintermunicipallocalgovernment                  TEXT,
  isinternationalorganization                      TEXT,
  islaborsurplusareafirm                           TEXT,
  islocalgovernmentowned                           TEXT,
  ismunicipalitylocalgovernment                    TEXT,
  isnativehawaiianownedorganizationorfirm          TEXT,
  isotherbusinessororganization                    TEXT,
  isotherminorityowned                             TEXT,
  ispartnershiporlimitedliabilitypartnership       TEXT,
  isschooldistrictlocalgovernment                  TEXT,
  issmallagriculturalcooperative                   TEXT,
  issoleproprietorship                             TEXT,
  istownshiplocalgovernment                        TEXT,
  istriballyownedfirm                              TEXT,
  istribalcollege                                  TEXT,
  isalaskannativeownedcorporationorfirm            TEXT,
  iscorporateentitytaxexempt                       TEXT,
  iswomenownedsmallbusiness                        TEXT,
  isecondisadvwomenownedsmallbusiness              TEXT,
  isjointventurewomenownedsmallbusiness            TEXT,
  isjointventureecondisadvwomenownedsmallbusiness  TEXT,
  walshhealyact                                    TEXT,
  servicecontractact                               TEXT,
  davisbaconact                                    TEXT,
  clingercohenact                                  TEXT,
  otherstatutoryauthority                          TEXT,
  prime_awardee_executive1                         TEXT,
  prime_awardee_executive1_compensation            TEXT,
  prime_awardee_executive2                         TEXT,
  prime_awardee_executive2_compensation            TEXT,
  prime_awardee_executive3                         TEXT,
  prime_awardee_executive3_compensation            TEXT,
  prime_awardee_executive4                         TEXT,
  prime_awardee_executive4_compensation            TEXT,
  prime_awardee_executive5                         TEXT,
  prime_awardee_executive5_compensation            TEXT,
  interagencycontractingauthority                  TEXT
);

CREATE TABLE IF NOT EXISTS contract_all (
  id INT CONSTRAINT pk_contract_all PRIMARY KEY,
  unique_transaction_id VARCHAR(32) NOT NULL,
  last_modified_date DATE NOT NULL,
  CONSTRAINT u_contract_all unique (unique_transaction_id, last_modified_date),
  query_progress INT,
  transaction_status VARCHAR(6),
  CONSTRAINT fk_transaction_status FOREIGN KEY (transaction_status) REFERENCES transaction_status(status),
  dollars_obligated MONEY,
  base_and_exercised_options_value MONEY,
  base_and_all_options_value MONEY,
  --
  -- contracting department, agency, office:
  contracting_department_id VARCHAR(4),
  contracting_department_name TEXT,
  contracting_agency_id VARCHAR(4),
  contracting_agency_name TEXT,
  contracting_agency_id_redundant VARCHAR(4),
  contracting_agency_name_redundant TEXT,
  contracting_office_id VARCHAR(6),
  contracting_office_name TEXT,
  -- funding department, agency, office
  funding_department_id VARCHAR(4),
  funding_department_name TEXT,
  funding_agency_id VARCHAR(4),
  funding_agency_name TEXT,
  funding_office_id VARCHAR(6),
  funding_office_name TEXT,
  --
  --
  funded_by_foreign_entity CHAR,
  CONSTRAINT fk_funded_by_foreign_entity FOREIGN KEY (funded_by_foreign_entity) REFERENCES funded_by_foreign_entity(code),
  signed_date DATE,
  effective_date DATE,
  current_completion_date DATE,
  ultimate_completion_date DATE,
  last_date_to_order DATE,
  contract_action_type VARCHAR(8),
  CONSTRAINT fk_contract_action_type FOREIGN KEY (contract_action_type) REFERENCES contract_action_type (code),
  reason_for_modification CHAR,
  CONSTRAINT fk_reason_for_modification FOREIGN KEY (reason_for_modification) REFERENCES reason_for_modification (code),
  type_of_contract_pricing VARCHAR(2),
  CONSTRAINT fk_type_of_contract_pricing FOREIGN KEY (type_of_contract_pricing) REFERENCES type_of_contract_pricing (code),
  price_evaluation_percent_difference REAL,
  subcontract_plan CHAR,
  CONSTRAINT fk_subcontract_plan FOREIGN KEY (subcontract_plan) REFERENCES subcontract_plan (code),
  letter_contract CHAR,
  CONSTRAINT fk_letter_contract FOREIGN KEY (letter_contract) REFERENCES letter_contract (code),
  multiyear_contract CHAR,
  CONSTRAINT fk_multiyear_contract FOREIGN KEY (multiyear_contract) REFERENCES multiyear_contract (code),
  performance_based_service_contract CHAR,
  CONSTRAINT fk_performance_based_service_contract FOREIGN KEY (performance_based_service_contract) REFERENCES performance_based_service_contract (code),
  major_program_code TEXT,
  contingency_humanitarian_peacekeeping_operation CHAR,
  CONSTRAINT fk_contingency_humanitarian_peacekeeping_operation FOREIGN KEY (contingency_humanitarian_peacekeeping_operation) REFERENCES contingency_humanitarian_peacekeeping_operation (code),
  contract_financing CHAR,
  CONSTRAINT fk_contract_financing FOREIGN KEY (contract_financing) REFERENCES contract_financing (code),
  cost_or_pricing_data CHAR,
  CONSTRAINT fk_cost_or_pricing_data FOREIGN KEY (cost_or_pricing_data) REFERENCES cost_or_pricing_data(code),
  cost_accounting_standards_clause CHAR,
  CONSTRAINT fk_cost_accounting_standards_clause FOREIGN KEY (cost_accounting_standards_clause) REFERENCES cost_accounting_standards_clause(code),
  descriptionofcontractrequirement TEXT,
  purchase_card_as_payment_method CHAR,
  CONSTRAINT fk_purchase_card_as_payment_method FOREIGN KEY (purchase_card_as_payment_method) REFERENCES purchase_card_as_payment_method(code),
  number_of_actions INTEGER,
  national_interest_action VARCHAR(4),
  CONSTRAINT fk_national_interest_action FOREIGN KEY (national_interest_action) REFERENCES national_interest_action(code),
  prog_source_agency VARCHAR(2),
  prog_source_account VARCHAR(4),
  prog_source_subacct VARCHAR(3),
  account_title TEXT,
  recovery_flag VARCHAR(4),
  CONSTRAINT fk_recovery_flag FOREIGN KEY (recovery_flag) REFERENCES recovery_flag(code),
  type_of_idc CHAR,
  CONSTRAINT fk_type_of_idc FOREIGN KEY (type_of_idc) REFERENCES type_of_idc(code),
  multiple_or_single_award_idc CHAR,
  CONSTRAINT fk_multiple_or_single_award_idc FOREIGN KEY (multiple_or_single_award_idc) REFERENCES multiple_or_single_award_idc(code),
  program_acronym TEXT,
  --
  -- vendor:
  --
  contractor_name TEXT,
  contractor_alternate_name TEXT,
  contractor_legal_organization_name TEXT,
  contractor_doing_as_business_name TEXT,
  contractor_division_name TEXT,
  contractor_division_number_or_office_code TEXT,
  contractor_enabled TEXT,
  contractor_location_disable_flag TEXT,
  contractor_ccr_exception CHAR,
  CONSTRAINT fk_contractor_ccr_exception FOREIGN KEY (contractor_ccr_exception) REFERENCES ccr_exception(code),
  contractor_street_address_1 TEXT,
  contractor_street_address_2 TEXT,
  contractor_street_address_3 TEXT,
  contractor_city TEXT,
  contractor_state TEXT,
  contractor_state_redundant TEXT,
  contractor_zip_code TEXT,
  contractor_country VARCHAR(3),
  CONSTRAINT fk_country FOREIGN KEY (contractor_country) REFERENCES country(code),
  contractor_congressional_district VARCHAR(4),
  contractor_congressional_district_redundant VARCHAR(4),
  contractor_site_code TEXT,
  contractor_alternate_site_code TEXT,
  contractor_duns_number VARCHAR(9),
  contractor_parent_duns_number VARCHAR(9),
  contractor_phone_number TEXT,
  contractor_fax_no TEXT,
  contractor_registration_date DATE,
  contractor_renewal_date DATE,
  contractor_parent_name TEXT,
  --
  --
  --
  location_code TEXT,
  place_of_performance_city TEXT,
  place_of_performance_state VARCHAR(2),
  CONSTRAINT fk_place_of_performance_state FOREIGN KEY (place_of_performance_state) REFERENCES state(code),
  place_of_performance_state_redundant VARCHAR(2),
  CONSTRAINT fk_place_of_performance_state_redundant FOREIGN KEY (place_of_performance_state_redundant) REFERENCES state(code),
  place_of_performance_country VARCHAR(3),
  CONSTRAINT fk_place_of_performance_country FOREIGN KEY (place_of_performance_country) REFERENCES country(code),
  place_of_performance_zip_code TEXT,
  place_of_performance_congressional_district VARCHAR(4),
  place_of_performance_congressional_district_redundant VARCHAR(4),
  product_or_service_category VARCHAR(2),
  CONSTRAINT fk_product_or_service_category FOREIGN KEY (product_or_service_category) REFERENCES product_or_service_category(code),
  product_or_service_code VARCHAR(4),
  CONSTRAINT fk_product_or_service_code FOREIGN KEY (product_or_service_code) REFERENCES product_or_service_code(code),
  --
  --
  --
  system_or_equipment_code VARCHAR(4),
  system_or_equipment_description TEXT,
  --
  --
  --
  claimant_program VARCHAR(3),
  CONSTRAINT fk_claimant_program FOREIGN KEY (claimant_program) REFERENCES claimant_program(code),
  naics VARCHAR(6),
  CONSTRAINT fk_naics FOREIGN KEY (naics) REFERENCES naics(code),
  information_technology_commercial_item_category CHAR,
  CONSTRAINT fk_information_technology_commercial_item_category FOREIGN KEY (information_technology_commercial_item_category) REFERENCES information_technology_commercial_item_category(code),
  gfe_gfp CHAR,
  CONSTRAINT fk_gfe_gfp FOREIGN KEY (gfe_gfp) REFERENCES gfe_gfp(code),
  use_of_epa_designated_products CHAR,
  CONSTRAINT fk_use_of_epa_designated_products FOREIGN KEY (use_of_epa_designated_products) REFERENCES use_of_epa_designated_products(code),
  recovered_material_clauses CHAR,
  CONSTRAINT fk_recovered_material_clauses FOREIGN KEY (recovered_material_clauses) REFERENCES recovered_material_clauses(code),
  sea_transportation CHAR,
  CONSTRAINT fk_sea_transportation FOREIGN KEY (sea_transportation) REFERENCES sea_transportation(code),
  contract_bundling CHAR,
  CONSTRAINT fk_contract_bundling FOREIGN KEY (contract_bundling) REFERENCES contract_bundling(code),
  consolidated_contract CHAR,
  CONSTRAINT fk_consolidated_contract FOREIGN KEY (consolidated_contract) REFERENCES consolidated_contract(code),
  country_of_origin VARCHAR(3),
  CONSTRAINT fk_country_of_origin FOREIGN KEY (country_of_origin) REFERENCES country(code),
  place_of_manufacture CHAR,
  CONSTRAINT fk_place_of_manufacture FOREIGN KEY (place_of_manufacture) REFERENCES place_of_manufacture(code),
  manufacturing_organization_type CHAR,
  CONSTRAINT fk_manufacturing_organization_type FOREIGN KEY (manufacturing_organization_type) REFERENCES manufacturing_organization_type(code),
  agency_id VARCHAR(4),
  agency_name TEXT,
  piid TEXT,
  modification_number TEXT,
  transaction_number TEXT,
  fiscal_year VARCHAR(4),
  idv_agency_id VARCHAR(4),
  idv_piid TEXT,
  idv_modification_number TEXT,
  solicitation_id TEXT,
  extent_competed VARCHAR(3),
  CONSTRAINT fk_extent_competed FOREIGN KEY (extent_competed) REFERENCES extent_competed(code),
  reason_not_competed VARCHAR(3),
  CONSTRAINT fk_reason_not_competed FOREIGN KEY (reason_not_competed) REFERENCES reason_not_competed(code),
  number_of_offers_received INTEGER,
  commercial_item_acquisition_procedures CHAR,
  CONSTRAINT fk_commercial_item_acquisition_procedures FOREIGN KEY (commercial_item_acquisition_procedures) REFERENCES commercial_item_acquisition_procedures(code),
  commercial_item_test_program CHAR,
  CONSTRAINT fk_commercial_item_test_program FOREIGN KEY (commercial_item_test_program) REFERENCES commercial_item_test_program(code),
  small_business_competitiveness_demonstration_program CHAR,
  CONSTRAINT fk_small_business_competitiveness_demonstration_program FOREIGN KEY (small_business_competitiveness_demonstration_program) REFERENCES small_business_competitiveness_demonstration_program(code),
  a76action CHAR,
  CONSTRAINT fk_a76action FOREIGN KEY (a76action) REFERENCES a76action(code),
  competitive_procedures TEXT,
  solicitation_procedures VARCHAR(4),
  CONSTRAINT fk_solicitation_procedures FOREIGN KEY (solicitation_procedures) REFERENCES solicitation_procedures(code),
  type_of_set_aside VARCHAR(8),
  CONSTRAINT fk_type_of_set_aside FOREIGN KEY (type_of_set_aside) REFERENCES type_of_set_aside(code),
  local_area_set_aside CHAR,
  CONSTRAINT fk_local_area_set_aside FOREIGN KEY (local_area_set_aside) REFERENCES local_area_set_aside(code),
  evaluated_preference VARCHAR(4),
  CONSTRAINT fk_evaluated_preference FOREIGN KEY (evaluated_preference) REFERENCES evaluated_preference(code),
  fedbizopps CHAR,
  CONSTRAINT fk_fedbizopps FOREIGN KEY (fedbizopps) REFERENCES fedbizopps(code),
  research VARCHAR(3),
  CONSTRAINT fk_research FOREIGN KEY (research) REFERENCES research(code),
  statutory_exception_to_fair_opportunity VARCHAR(4),
  CONSTRAINT fk_statutory_exception_to_fair_opportunity FOREIGN KEY (statutory_exception_to_fair_opportunity) REFERENCES statutory_exception_to_fair_opportunity(code),
  contractor_organizational_type TEXT,
  contractor_number_of_employees BIGINT,
  contractor_annual_revenue MONEY,
  firm8aflag CHAR,
  CONSTRAINT fk_firm8aflag FOREIGN KEY (firm8aflag) REFERENCES flag_value(code),
  hubzoneflag CHAR,
  CONSTRAINT fk_hubzoneflag FOREIGN KEY (hubzoneflag) REFERENCES flag_value(code),
  sdbflag CHAR,
  CONSTRAINT fk_sdbflag FOREIGN KEY (sdbflag) REFERENCES flag_value(code),
  issbacertifiedsmalldisadvantagedbusiness CHAR,
  CONSTRAINT fk_issbacertifiedsmalldisadvantagedbusiness FOREIGN KEY (issbacertifiedsmalldisadvantagedbusiness) REFERENCES flag_value(code),
  shelteredworkshopflag CHAR,
  CONSTRAINT fk_shelteredworkshopflag FOREIGN KEY (shelteredworkshopflag) REFERENCES flag_value(code),
  hbcuflag CHAR,
  CONSTRAINT fk_hbcuflag FOREIGN KEY (hbcuflag) REFERENCES flag_value(code),
  educationalinstitutionflag CHAR,
  CONSTRAINT fk_educationalinstitutionflag FOREIGN KEY (educationalinstitutionflag) REFERENCES flag_value(code),
  womenownedflag CHAR,
  CONSTRAINT fk_womenownedflag FOREIGN KEY (womenownedflag) REFERENCES flag_value(code),
  veteranownedflag CHAR,
  CONSTRAINT fk_veteranownedflag FOREIGN KEY (veteranownedflag) REFERENCES flag_value(code),
  srdvobflag CHAR,
  CONSTRAINT fk_srdvobflag FOREIGN KEY (srdvobflag) REFERENCES flag_value(code),
  localgovernmentflag CHAR,
  CONSTRAINT fk_localgovernmentflag FOREIGN KEY (localgovernmentflag) REFERENCES flag_value(code),
  minorityinstitutionflag CHAR,
  CONSTRAINT fk_minorityinstitutionflag FOREIGN KEY (minorityinstitutionflag) REFERENCES flag_value(code),
  aiobflag CHAR,
  CONSTRAINT fk_aiobflag FOREIGN KEY (aiobflag) REFERENCES flag_value(code),
  stategovernmentflag CHAR,
  CONSTRAINT fk_stategovernmentflag FOREIGN KEY (stategovernmentflag) REFERENCES flag_value(code),
  federalgovernmentflag CHAR,
  CONSTRAINT fk_federalgovernmentflag FOREIGN KEY (federalgovernmentflag) REFERENCES flag_value(code),
  minorityownedbusinessflag CHAR,
  CONSTRAINT fk_minorityownedbusinessflag FOREIGN KEY (minorityownedbusinessflag) REFERENCES flag_value(code),
  apaobflag CHAR,
  CONSTRAINT fk_apaobflag FOREIGN KEY (apaobflag) REFERENCES flag_value(code),
  tribalgovernmentflag CHAR,
  CONSTRAINT fk_tribalgovernmentflag FOREIGN KEY (tribalgovernmentflag) REFERENCES flag_value(code),
  baobflag CHAR,
  CONSTRAINT fk_baobflag FOREIGN KEY (baobflag) REFERENCES flag_value(code),
  naobflag CHAR,
  CONSTRAINT fk_naobflag FOREIGN KEY (naobflag) REFERENCES flag_value(code),
  saaobflag CHAR,
  CONSTRAINT fk_saaobflag FOREIGN KEY (saaobflag) REFERENCES flag_value(code),
  nonprofitorganizationflag CHAR,
  CONSTRAINT fk_nonprofitorganizationflag FOREIGN KEY (nonprofitorganizationflag) REFERENCES flag_value(code),
  isothernotforprofitorganization CHAR,
  CONSTRAINT fk_isothernotforprofitorganization FOREIGN KEY (isothernotforprofitorganization) REFERENCES flag_value(code),
  isforprofitorganization CHAR,
  CONSTRAINT fk_isforprofitorganization FOREIGN KEY (isforprofitorganization) REFERENCES flag_value(code),
  isfoundation CHAR,
  CONSTRAINT fk_isfoundation FOREIGN KEY (isfoundation) REFERENCES flag_value(code),
  haobflag CHAR,
  CONSTRAINT fk_haobflag FOREIGN KEY (haobflag) REFERENCES flag_value(code),
  ishispanicservicinginstitution CHAR,
  CONSTRAINT fk_ishispanicservicinginstitution FOREIGN KEY (ishispanicservicinginstitution) REFERENCES flag_value(code),
  emergingsmallbusinessflag CHAR,
  CONSTRAINT fk_emergingsmallbusinessflag FOREIGN KEY (emergingsmallbusinessflag) REFERENCES flag_value(code),
  hospitalflag CHAR,
  CONSTRAINT fk_hospitalflag FOREIGN KEY (hospitalflag) REFERENCES flag_value(code),
  contractingofficerbusinesssizedetermination CHAR,
  CONSTRAINT fk_contractingofficerbusinesssizedetermination FOREIGN KEY (contractingofficerbusinesssizedetermination) REFERENCES business_size(code),
  is1862landgrantcollege CHAR,
  CONSTRAINT fk_is1862landgrantcollege FOREIGN KEY (is1862landgrantcollege) REFERENCES flag_value(code),
  is1890landgrantcollege CHAR,
  CONSTRAINT fk_is1890landgrantcollege FOREIGN KEY (is1890landgrantcollege) REFERENCES flag_value(code),
  is1994landgrantcollege CHAR,
  CONSTRAINT fk_is1994landgrantcollege FOREIGN KEY (is1994landgrantcollege) REFERENCES flag_value(code),
  isveterinarycollege CHAR,
  CONSTRAINT fk_isveterinarycollege FOREIGN KEY (isveterinarycollege) REFERENCES flag_value(code),
  isveterinaryhospital CHAR,
  CONSTRAINT fk_isveterinaryhospital FOREIGN KEY (isveterinaryhospital) REFERENCES flag_value(code),
  isprivateuniversityorcollege CHAR,
  CONSTRAINT fk_isprivateuniversityorcollege FOREIGN KEY (isprivateuniversityorcollege) REFERENCES flag_value(code),
  isschoolofforestry CHAR,
  CONSTRAINT fk_isschoolofforestry FOREIGN KEY (isschoolofforestry) REFERENCES flag_value(code),
  isstatecontrolledinstitutionofhigherlearning CHAR,
  CONSTRAINT fk_isstatecontrolledinstitutionofhigherlearning FOREIGN KEY (isstatecontrolledinstitutionofhigherlearning) REFERENCES flag_value(code),
  isserviceprovider CHAR,
  CONSTRAINT fk_isserviceprovider FOREIGN KEY (isserviceprovider) REFERENCES flag_value(code),
  receivescontracts CHAR,
  CONSTRAINT fk_receivescontracts FOREIGN KEY (receivescontracts) REFERENCES flag_value(code),
  receivesgrants CHAR,
  CONSTRAINT fk_receivesgrants FOREIGN KEY (receivesgrants) REFERENCES flag_value(code),
  receivescontractsandgrants CHAR,
  CONSTRAINT fk_receivescontractsandgrants FOREIGN KEY (receivescontractsandgrants) REFERENCES flag_value(code),
  isairportauthority CHAR,
  CONSTRAINT fk_isairportauthority FOREIGN KEY (isairportauthority) REFERENCES flag_value(code),
  iscouncilofgovernments CHAR,
  CONSTRAINT fk_iscouncilofgovernments FOREIGN KEY (iscouncilofgovernments) REFERENCES flag_value(code),
  ishousingauthoritiespublicortribal CHAR,
  CONSTRAINT fk_ishousingauthoritiespublicortribal FOREIGN KEY (ishousingauthoritiespublicortribal) REFERENCES flag_value(code),
  isinterstateentity CHAR,
  CONSTRAINT fk_isinterstateentity FOREIGN KEY (isinterstateentity) REFERENCES flag_value(code),
  isplanningcommission CHAR,
  CONSTRAINT fk_isplanningcommission FOREIGN KEY (isplanningcommission) REFERENCES flag_value(code),
  isportauthority CHAR,
  CONSTRAINT fk_isportauthority FOREIGN KEY (isportauthority) REFERENCES flag_value(code),
  istransitauthority CHAR,
  CONSTRAINT fk_istransitauthority FOREIGN KEY (istransitauthority) REFERENCES flag_value(code),
  issubchapterscorporation CHAR,
  CONSTRAINT fk_issubchapterscorporation FOREIGN KEY (issubchapterscorporation) REFERENCES flag_value(code),
  islimitedliabilitycorporation CHAR,
  CONSTRAINT fk_islimitedliabilitycorporation FOREIGN KEY (islimitedliabilitycorporation) REFERENCES flag_value(code),
  isforeignownedandlocated CHAR,
  CONSTRAINT fk_isforeignownedandlocated FOREIGN KEY (isforeignownedandlocated) REFERENCES flag_value(code),
  isarchitectureandengineering CHAR,
  CONSTRAINT fk_isarchitectureandengineering FOREIGN KEY (isarchitectureandengineering) REFERENCES flag_value(code),
  isdotcertifieddisadvantagedbusinessenterprise CHAR,
  CONSTRAINT fk_isdotcertifieddisadvantagedbusinessenterprise FOREIGN KEY (isdotcertifieddisadvantagedbusinessenterprise) REFERENCES flag_value(code),
  iscitylocalgovernment CHAR,
  CONSTRAINT fk_iscitylocalgovernment FOREIGN KEY (iscitylocalgovernment) REFERENCES flag_value(code),
  iscommunitydevelopedcorporationownedfirm CHAR,
  CONSTRAINT fk_iscommunitydevelopedcorporationownedfirm FOREIGN KEY (iscommunitydevelopedcorporationownedfirm) REFERENCES flag_value(code),
  iscommunitydevelopmentcorporation CHAR,
  CONSTRAINT fk_iscommunitydevelopmentcorporation FOREIGN KEY (iscommunitydevelopmentcorporation) REFERENCES flag_value(code),
  isconstructionfirm CHAR,
  CONSTRAINT fk_isconstructionfirm FOREIGN KEY (isconstructionfirm) REFERENCES flag_value(code),
  ismanufacturerofgoods CHAR,
  CONSTRAINT fk_ismanufacturerofgoods FOREIGN KEY (ismanufacturerofgoods) REFERENCES flag_value(code),
  iscorporateentitynottaxexempt CHAR,
  CONSTRAINT fk_iscorporateentitynottaxexempt FOREIGN KEY (iscorporateentitynottaxexempt) REFERENCES flag_value(code),
  iscountylocalgovernment CHAR,
  CONSTRAINT fk_iscountylocalgovernment FOREIGN KEY (iscountylocalgovernment) REFERENCES flag_value(code),
  isdomesticshelter CHAR,
  CONSTRAINT fk_isdomesticshelter FOREIGN KEY (isdomesticshelter) REFERENCES flag_value(code),
  isfederalgovernmentagency CHAR,
  CONSTRAINT fk_isfederalgovernmentagency FOREIGN KEY (isfederalgovernmentagency) REFERENCES flag_value(code),
  isfederallyfundedresearchanddevelopmentcorp CHAR,
  CONSTRAINT fk_isfederallyfundedresearchanddevelopmentcorp FOREIGN KEY (isfederallyfundedresearchanddevelopmentcorp) REFERENCES flag_value(code),
  isforeigngovernment CHAR,
  CONSTRAINT fk_isforeigngovernment FOREIGN KEY (isforeigngovernment) REFERENCES flag_value(code),
  isindiantribe CHAR,
  CONSTRAINT fk_isindiantribe FOREIGN KEY (isindiantribe) REFERENCES flag_value(code),
  isintermunicipallocalgovernment CHAR,
  CONSTRAINT fk_isintermunicipallocalgovernment FOREIGN KEY (isintermunicipallocalgovernment) REFERENCES flag_value(code),
  isinternationalorganization CHAR,
  CONSTRAINT fk_isinternationalorganization FOREIGN KEY (isinternationalorganization) REFERENCES flag_value(code),
  islaborsurplusareafirm CHAR,
  CONSTRAINT fk_islaborsurplusareafirm FOREIGN KEY (islaborsurplusareafirm) REFERENCES flag_value(code),
  islocalgovernmentowned CHAR,
  CONSTRAINT fk_islocalgovernmentowned FOREIGN KEY (islocalgovernmentowned) REFERENCES flag_value(code),
  ismunicipalitylocalgovernment CHAR,
  CONSTRAINT fk_ismunicipalitylocalgovernment FOREIGN KEY (ismunicipalitylocalgovernment) REFERENCES flag_value(code),
  isnativehawaiianownedorganizationorfirm CHAR,
  CONSTRAINT fk_isnativehawaiianownedorganizationorfirm FOREIGN KEY (isnativehawaiianownedorganizationorfirm) REFERENCES flag_value(code),
  isotherbusinessororganization CHAR,
  CONSTRAINT fk_isotherbusinessororganization FOREIGN KEY (isotherbusinessororganization) REFERENCES flag_value(code),
  isotherminorityowned CHAR,
  CONSTRAINT fk_isotherminorityowned FOREIGN KEY (isotherminorityowned) REFERENCES flag_value(code),
  ispartnershiporlimitedliabilitypartnership CHAR,
  CONSTRAINT fk_ispartnershiporlimitedliabilitypartnership FOREIGN KEY (ispartnershiporlimitedliabilitypartnership) REFERENCES flag_value(code),
  isschooldistrictlocalgovernment CHAR,
  CONSTRAINT fk_isschooldistrictlocalgovernment FOREIGN KEY (isschooldistrictlocalgovernment) REFERENCES flag_value(code),
  issmallagriculturalcooperative CHAR,
  CONSTRAINT fk_issmallagriculturalcooperative FOREIGN KEY (issmallagriculturalcooperative) REFERENCES flag_value(code),
  issoleproprietorship CHAR,
  CONSTRAINT fk_issoleproprietorship FOREIGN KEY (issoleproprietorship) REFERENCES flag_value(code),
  istownshiplocalgovernment CHAR,
  CONSTRAINT fk_istownshiplocalgovernment FOREIGN KEY (istownshiplocalgovernment) REFERENCES flag_value(code),
  istriballyownedfirm CHAR,
  CONSTRAINT fk_istriballyownedfirm FOREIGN KEY (istriballyownedfirm) REFERENCES flag_value(code),
  istribalcollege CHAR,
  CONSTRAINT fk_istribalcollege FOREIGN KEY (istribalcollege) REFERENCES flag_value(code),
  isalaskannativeownedcorporationorfirm CHAR,
  CONSTRAINT fk_isalaskannativeownedcorporationorfirm FOREIGN KEY (isalaskannativeownedcorporationorfirm) REFERENCES flag_value(code),
  iscorporateentitytaxexempt CHAR,
  CONSTRAINT fk_iscorporateentitytaxexempt FOREIGN KEY (iscorporateentitytaxexempt) REFERENCES flag_value(code),
  iswomenownedsmallbusiness CHAR,
  CONSTRAINT fk_iswomenownedsmallbusiness FOREIGN KEY (iswomenownedsmallbusiness) REFERENCES flag_value(code),
  isecondisadvwomenownedsmallbusiness CHAR,
  CONSTRAINT fk_isecondisadvwomenownedsmallbusiness FOREIGN KEY (isecondisadvwomenownedsmallbusiness) REFERENCES flag_value(code),
  isjointventurewomenownedsmallbusiness CHAR,
  CONSTRAINT fk_isjointventurewomenownedsmallbusiness FOREIGN KEY (isjointventurewomenownedsmallbusiness) REFERENCES flag_value(code),
  isjointventureecondisadvwomenownedsmallbusiness CHAR,
  CONSTRAINT fk_isjointventureecondisadvwomenownedsmallbusiness FOREIGN KEY (isjointventureecondisadvwomenownedsmallbusiness) REFERENCES flag_value(code),
  walsh_healy_act CHAR,
  CONSTRAINT fk_walsh_healy_act FOREIGN KEY (walsh_healy_act) REFERENCES walsh_healy_act(code),
  service_contract_act CHAR,
  CONSTRAINT fk_service_contract_act FOREIGN KEY (service_contract_act) REFERENCES service_contract_act(code),
  davis_bacon_act CHAR,
  CONSTRAINT fk_davis_bacon_act FOREIGN KEY (davis_bacon_act) REFERENCES davis_bacon_act(code),
  clinger_cohen_act CHAR,
  CONSTRAINT fk_clinger_cohen_act FOREIGN KEY (clinger_cohen_act) REFERENCES clinger_cohen_act(code),
  other_statutory_authority TEXT,
  prime_awardee_executive1 TEXT,
  prime_awardee_executive1_compensation MONEY,
  prime_awardee_executive2 TEXT,
  prime_awardee_executive2_compensation MONEY,
  prime_awardee_executive3 TEXT,
  prime_awardee_executive3_compensation MONEY,
  prime_awardee_executive4 TEXT,
  prime_awardee_executive4_compensation MONEY,
  prime_awardee_executive5 TEXT,
  prime_awardee_executive5_compensation MONEY,
  interagency_contracting_authority CHAR,
  CONSTRAINT fk_interagency_contracting_authority FOREIGN KEY (interagency_contracting_authority) REFERENCES interagency_contracting_authority(code)
);

--
-- TEMPORARY CODE
--

CREATE OR REPLACE FUNCTION contractor_other_location_info(field TEXT) RETURNS TEXT AS $$
BEGIN
  IF field in ('AK', 'AL', 'AR', 'AS', 'AZ', 'CA', 'CO', 'CT', 'DC', 'DE', 'FL', 'GA', 'GU', 'HI', 'IA', 'ID', 'IL', 'IN', 'KS', 'KY', 'LA', 'MA', 'MD', 'ME', 'MH', 'MI', 'MN', 'MO', 'MP', 'MS', 'MT', 'NC', 'ND', 'NE', 'NH', 'NJ', 'NM', 'NV', 'NY', 'OH', 'OK', 'OR', 'PA', 'PR', 'PW', 'RI', 'SC', 'SD', 'TN', 'TX', 'UM', 'UT', 'VA', 'VI', 'VT', 'WA', 'WI', 'WV', 'WY', 'PALAU', 'PUERTO RICO') THEN
    return NULL;
  ELSEr
    RETURN field;
  END IF;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION contractor_state(field TEXT) RETURNS TEXT AS $$
BEGIN
  IF field in ('AK', 'AL', 'AR', 'AS', 'AZ', 'CA', 'CO', 'CT', 'DC', 'DE', 'FL', 'GA', 'GU', 'HI', 'IA', 'ID', 'IL', 'IN', 'KS', 'KY', 'LA', 'MA', 'MD', 'ME', 'MH', 'MI', 'MN', 'MO', 'MP', 'MS', 'MT', 'NC', 'ND', 'NE', 'NH', 'NJ', 'NM', 'NV', 'NY', 'OH', 'OK', 'OR', 'PA', 'PR', 'PW', 'RI', 'SC', 'SD', 'TN', 'TX', 'UM', 'UT', 'VA', 'VI', 'VT', 'WA', 'WI', 'WV', 'WY') THEN
    return field;
  ELSEIF field = 'PALAU' THEN
    return 'PW';
  ELSEIF field = 'PUERTO RICO' THEN
    return 'PR';
  ELSE
    RETURN NULL;
  END IF;
END;
$$ LANGUAGE plpgsql;

ALTER TABLE contract ADD COLUMN contractor_other_location_info TEXT;
--
-- -- [2016-09-14 10:34:43] completed in 29ms
--
ALTER TABLE contract RENAME contractor_state_redundant TO contractor_state_other_info_redundant;
--
-- -- [2016-09-14 10:34:53] completed in 22ms

update contract
set contractor_other_location_info = contractor_other_location_info(contractor_state),
  contractor_state = contractor_state(contractor_state)
where contractor_state is NOT NULL;

-- UPDATE 21540627
-- Time: 17257989.668 ms

DROP FUNCTION contractor_other_location_info(TEXT);
--
-- -- [2016-09-14 18:28:04] completed in 17ms
--
DROP FUNCTION contractor_state(TEXT);
--
-- -- [2016-09-14 18:27:59] completed in 42ms

ALTER TABLE contract ADD FOREIGN KEY(contractor_state) REFERENCES state(code);

-- ALTER TABLE
-- Time: 2058663.885 ms

--
-- END OF TEMPORARY CODE
--

CREATE INDEX IF NOT EXISTS idx_department ON contract (contracting_department_id, last_modified_date);
CREATE INDEX IF NOT EXISTS idx_contractor_duns_number ON contract (contractor_duns_number, last_modified_date);

--CREATE INDEX IF NOT EXISTS idx_transaction_status ON contract_csv (transaction_status);
--CREATE INDEX IF NOT EXISTS idx_dollarsobligated ON contract_csv (dollarsobligated);
--CREATE INDEX IF NOT EXISTS idx_baseandexercisedoptionsvalue ON contract_csv (baseandexercisedoptionsvalue);
--CREATE INDEX IF NOT EXISTS idx_baseandalloptionsvalue ON contract_csv (baseandalloptionsvalue);
--CREATE INDEX IF NOT EXISTS idx_maj_agency_cat ON contract_csv (maj_agency_cat);
--CREATE INDEX IF NOT EXISTS idx_mod_agency ON contract_csv (mod_agency);
--CREATE INDEX IF NOT EXISTS idx_maj_fund_agency_cat ON contract_csv (maj_fund_agency_cat);
--CREATE INDEX IF NOT EXISTS idx_contractingofficeagencyid ON contract_csv (contractingofficeagencyid);
--CREATE INDEX IF NOT EXISTS idx_contractingofficeid ON contract_csv (contractingofficeid);
--CREATE INDEX IF NOT EXISTS idx_fundingrequestingagencyid ON contract_csv (fundingrequestingagencyid);
--CREATE INDEX IF NOT EXISTS idx_fundingrequestingofficeid ON contract_csv (fundingrequestingofficeid);
--CREATE INDEX IF NOT EXISTS idx_fundedbyforeignentity ON contract_csv (fundedbyforeignentity);
--CREATE INDEX IF NOT EXISTS idx_signeddate ON contract_csv (signeddate);
--CREATE INDEX IF NOT EXISTS idx_effectivedate ON contract_csv (effectivedate);
--CREATE INDEX IF NOT EXISTS idx_currentcompletiondate ON contract_csv (currentcompletiondate);
--CREATE INDEX IF NOT EXISTS idx_ultimatecompletiondate ON contract_csv (ultimatecompletiondate);
--CREATE INDEX IF NOT EXISTS idx_lastdatetoorder ON contract_csv (lastdatetoorder);
--CREATE INDEX IF NOT EXISTS idx_contractactiontype ON contract_csv (contractactiontype);
--CREATE INDEX IF NOT EXISTS idx_reasonformodification ON contract_csv (reasonformodification);
--CREATE INDEX IF NOT EXISTS idx_typeofcontractpricing ON contract_csv (typeofcontractpricing);
--CREATE INDEX IF NOT EXISTS idx_priceevaluationpercentdifference ON contract_csv (priceevaluationpercentdifference);
--CREATE INDEX IF NOT EXISTS idx_subcontractplan ON contract_csv (subcontractplan);
--CREATE INDEX IF NOT EXISTS idx_lettercontract ON contract_csv (lettercontract);
--CREATE INDEX IF NOT EXISTS idx_multiyearcontract ON contract_csv (multiyearcontract);
--CREATE INDEX IF NOT EXISTS idx_performancebasedservicecontract ON contract_csv (performancebasedservicecontract);
--CREATE INDEX IF NOT EXISTS idx_majorprogramcode ON contract_csv (majorprogramcode);
--CREATE INDEX IF NOT EXISTS idx_contingencyhumanitarianpeacekeepingoperation ON contract_csv (contingencyhumanitarianpeacekeepingoperation);
--CREATE INDEX IF NOT EXISTS idx_contractfinancing ON contract_csv (contractfinancing);
--CREATE INDEX IF NOT EXISTS idx_costorpricingdata ON contract_csv (costorpricingdata);
--CREATE INDEX IF NOT EXISTS idx_costaccountingstandardsclause ON contract_csv (costaccountingstandardsclause);
----CREATE INDEX IF NOT EXISTS idx_descriptionofcontractrequirement ON contract_csv (descriptionofcontractrequirement);
--CREATE INDEX IF NOT EXISTS idx_purchasecardaspaymentmethod ON contract_csv (purchasecardaspaymentmethod);
--CREATE INDEX IF NOT EXISTS idx_numberofactions ON contract_csv (numberofactions);
--CREATE INDEX IF NOT EXISTS idx_nationalinterestactioncode ON contract_csv (nationalinterestactioncode);
--CREATE INDEX IF NOT EXISTS idx_progsourceagency ON contract_csv (progsourceagency);
--CREATE INDEX IF NOT EXISTS idx_progsourceaccount ON contract_csv (progsourceaccount);
--CREATE INDEX IF NOT EXISTS idx_progsourcesubacct ON contract_csv (progsourcesubacct);
--CREATE INDEX IF NOT EXISTS idx_account_title ON contract_csv (account_title);
--CREATE INDEX IF NOT EXISTS idx_rec_flag ON contract_csv (rec_flag);
--CREATE INDEX IF NOT EXISTS idx_typeofidc ON contract_csv (typeofidc);
--CREATE INDEX IF NOT EXISTS idx_multipleorsingleawardidc ON contract_csv (multipleorsingleawardidc);
--CREATE INDEX IF NOT EXISTS idx_programacronym ON contract_csv (programacronym);
--CREATE INDEX IF NOT EXISTS idx_vendorname ON contract_csv (vendorname);
--CREATE INDEX IF NOT EXISTS idx_vendoralternatename ON contract_csv (vendoralternatename);
--CREATE INDEX IF NOT EXISTS idx_vendorlegalorganizationname ON contract_csv (vendorlegalorganizationname);
--CREATE INDEX IF NOT EXISTS idx_vendordoingasbusinessname ON contract_csv (vendordoingasbusinessname);
--CREATE INDEX IF NOT EXISTS idx_divisionname ON contract_csv (divisionname);
--CREATE INDEX IF NOT EXISTS idx_divisionnumberorofficecode ON contract_csv (divisionnumberorofficecode);
--CREATE INDEX IF NOT EXISTS idx_vendorenabled ON contract_csv (vendorenabled);
--CREATE INDEX IF NOT EXISTS idx_vendorlocationdisableflag ON contract_csv (vendorlocationdisableflag);
--CREATE INDEX IF NOT EXISTS idx_ccrexception ON contract_csv (ccrexception);
--CREATE INDEX IF NOT EXISTS idx_streetaddress ON contract_csv (streetaddress);
--CREATE INDEX IF NOT EXISTS idx_streetaddress2 ON contract_csv (streetaddress2);
--CREATE INDEX IF NOT EXISTS idx_streetaddress3 ON contract_csv (streetaddress3);
--CREATE INDEX IF NOT EXISTS idx_city ON contract_csv (city);
--CREATE INDEX IF NOT EXISTS idx_state ON contract_csv (state);
--CREATE INDEX IF NOT EXISTS idx_zipcode ON contract_csv (zipcode);
--CREATE INDEX IF NOT EXISTS idx_vendorcountrycode ON contract_csv (vendorcountrycode);
--CREATE INDEX IF NOT EXISTS idx_vendor_state_code ON contract_csv (vendor_state_code);
--CREATE INDEX IF NOT EXISTS idx_vendor_cd ON contract_csv (vendor_cd);
--CREATE INDEX IF NOT EXISTS idx_congressionaldistrict ON contract_csv (congressionaldistrict);
--CREATE INDEX IF NOT EXISTS idx_vendorsitecode ON contract_csv (vendorsitecode);
--CREATE INDEX IF NOT EXISTS idx_vendoralternatesitecode ON contract_csv (vendoralternatesitecode);
--CREATE INDEX IF NOT EXISTS idx_dunsnumber ON contract_csv (dunsnumber);
--CREATE INDEX IF NOT EXISTS idx_parentdunsnumber ON contract_csv (parentdunsnumber);
--CREATE INDEX IF NOT EXISTS idx_phoneno ON contract_csv (phoneno);
--CREATE INDEX IF NOT EXISTS idx_faxno ON contract_csv (faxno);
--CREATE INDEX IF NOT EXISTS idx_registrationdate ON contract_csv (registrationdate);
--CREATE INDEX IF NOT EXISTS idx_renewaldate ON contract_csv (renewaldate);
--CREATE INDEX IF NOT EXISTS idx_mod_parent ON contract_csv (mod_parent);
--CREATE INDEX IF NOT EXISTS idx_locationcode ON contract_csv (locationcode);
--CREATE INDEX IF NOT EXISTS idx_statecode ON contract_csv (statecode);
--CREATE INDEX IF NOT EXISTS idx_PlaceofPerformanceCity ON contract_csv (PlaceofPerformanceCity);
--CREATE INDEX IF NOT EXISTS idx_pop_state_code ON contract_csv (pop_state_code);
--CREATE INDEX IF NOT EXISTS idx_placeofperformancecountrycode ON contract_csv (placeofperformancecountrycode);
--CREATE INDEX IF NOT EXISTS idx_placeofperformancezipcode ON contract_csv (placeofperformancezipcode);
--CREATE INDEX IF NOT EXISTS idx_pop_cd ON contract_csv (pop_cd);
--CREATE INDEX IF NOT EXISTS idx_placeofperformancecongressionaldistrict ON contract_csv (placeofperformancecongressionaldistrict);
--CREATE INDEX IF NOT EXISTS idx_psc_cat ON contract_csv (psc_cat);
--CREATE INDEX IF NOT EXISTS idx_productorservicecode ON contract_csv (productorservicecode);
--CREATE INDEX IF NOT EXISTS idx_systemequipmentcode ON contract_csv (systemequipmentcode);
--CREATE INDEX IF NOT EXISTS idx_claimantprogramcode ON contract_csv (claimantprogramcode);
--CREATE INDEX IF NOT EXISTS idx_principalnaicscode ON contract_csv (principalnaicscode);
--CREATE INDEX IF NOT EXISTS idx_informationtechnologycommercialitemcategory ON contract_csv (informationtechnologycommercialitemcategory);
--CREATE INDEX IF NOT EXISTS idx_gfe_gfp ON contract_csv (gfe_gfp);
--CREATE INDEX IF NOT EXISTS idx_useofepadesignatedproducts ON contract_csv (useofepadesignatedproducts);
--CREATE INDEX IF NOT EXISTS idx_recoveredmaterialclauses ON contract_csv (recoveredmaterialclauses);
--CREATE INDEX IF NOT EXISTS idx_seatransportation ON contract_csv (seatransportation);
--CREATE INDEX IF NOT EXISTS idx_contractbundling ON contract_csv (contractbundling);
--CREATE INDEX IF NOT EXISTS idx_consolidatedcontract ON contract_csv (consolidatedcontract);
--CREATE INDEX IF NOT EXISTS idx_countryoforigin ON contract_csv (countryoforigin);
--CREATE INDEX IF NOT EXISTS idx_placeofmanufacture ON contract_csv (placeofmanufacture);
--CREATE INDEX IF NOT EXISTS idx_manufacturingorganizationtype ON contract_csv (manufacturingorganizationtype);
--CREATE INDEX IF NOT EXISTS idx_agencyid ON contract_csv (agencyid);
--CREATE INDEX IF NOT EXISTS idx_piid ON contract_csv (piid);
--CREATE INDEX IF NOT EXISTS idx_modnumber ON contract_csv (modnumber);
--CREATE INDEX IF NOT EXISTS idx_transactionnumber ON contract_csv (transactionnumber);
--CREATE INDEX IF NOT EXISTS idx_fiscal_year ON contract_csv (fiscal_year);
--CREATE INDEX IF NOT EXISTS idx_idvagencyid ON contract_csv (idvagencyid);
--CREATE INDEX IF NOT EXISTS idx_idvpiid ON contract_csv (idvpiid);
--CREATE INDEX IF NOT EXISTS idx_idvmodificationnumber ON contract_csv (idvmodificationnumber);
--CREATE INDEX IF NOT EXISTS idx_solicitationid ON contract_csv (solicitationid);
--CREATE INDEX IF NOT EXISTS idx_extentcompeted ON contract_csv (extentcompeted);
--CREATE INDEX IF NOT EXISTS idx_reasonnotcompeted ON contract_csv (reasonnotcompeted);
--CREATE INDEX IF NOT EXISTS idx_numberofoffersreceived ON contract_csv (numberofoffersreceived);
--CREATE INDEX IF NOT EXISTS idx_commercialitemacquisitionprocedures ON contract_csv (commercialitemacquisitionprocedures);
--CREATE INDEX IF NOT EXISTS idx_commercialitemtestprogram ON contract_csv (commercialitemtestprogram);
--CREATE INDEX IF NOT EXISTS idx_smallbusinesscompetitivenessdemonstrationprogram ON contract_csv (smallbusinesscompetitivenessdemonstrationprogram);
--CREATE INDEX IF NOT EXISTS idx_a76action ON contract_csv (a76action);
--CREATE INDEX IF NOT EXISTS idx_competitiveprocedures ON contract_csv (competitiveprocedures);
--CREATE INDEX IF NOT EXISTS idx_solicitationprocedures ON contract_csv (solicitationprocedures);
--CREATE INDEX IF NOT EXISTS idx_typeofsetaside ON contract_csv (typeofsetaside);
--CREATE INDEX IF NOT EXISTS idx_localareasetaside ON contract_csv (localareasetaside);
--CREATE INDEX IF NOT EXISTS idx_evaluatedpreference ON contract_csv (evaluatedpreference);
--CREATE INDEX IF NOT EXISTS idx_fedbizopps ON contract_csv (fedbizopps);
--CREATE INDEX IF NOT EXISTS idx_research ON contract_csv (research);
--CREATE INDEX IF NOT EXISTS idx_statutoryexceptiontofairopportunity ON contract_csv (statutoryexceptiontofairopportunity);
--CREATE INDEX IF NOT EXISTS idx_organizationaltype ON contract_csv (organizationaltype);
--CREATE INDEX IF NOT EXISTS idx_numberofemployees ON contract_csv (numberofemployees);
--CREATE INDEX IF NOT EXISTS idx_annualrevenue ON contract_csv (annualrevenue);
--CREATE INDEX IF NOT EXISTS idx_firm8aflag ON contract_csv (firm8aflag);
--CREATE INDEX IF NOT EXISTS idx_hubzoneflag ON contract_csv (hubzoneflag);
--CREATE INDEX IF NOT EXISTS idx_sdbflag ON contract_csv (sdbflag);
--CREATE INDEX IF NOT EXISTS idx_issbacertifiedsmalldisadvantagedbusiness ON contract_csv (issbacertifiedsmalldisadvantagedbusiness);
--CREATE INDEX IF NOT EXISTS idx_shelteredworkshopflag ON contract_csv (shelteredworkshopflag);
--CREATE INDEX IF NOT EXISTS idx_hbcuflag ON contract_csv (hbcuflag);
--CREATE INDEX IF NOT EXISTS idx_educationalinstitutionflag ON contract_csv (educationalinstitutionflag);
--CREATE INDEX IF NOT EXISTS idx_womenownedflag ON contract_csv (womenownedflag);
--CREATE INDEX IF NOT EXISTS idx_veteranownedflag ON contract_csv (veteranownedflag);
--CREATE INDEX IF NOT EXISTS idx_srdvobflag ON contract_csv (srdvobflag);
--CREATE INDEX IF NOT EXISTS idx_localgovernmentflag ON contract_csv (localgovernmentflag);
--CREATE INDEX IF NOT EXISTS idx_minorityinstitutionflag ON contract_csv (minorityinstitutionflag);
--CREATE INDEX IF NOT EXISTS idx_aiobflag ON contract_csv (aiobflag);
--CREATE INDEX IF NOT EXISTS idx_stategovernmentflag ON contract_csv (stategovernmentflag);
--CREATE INDEX IF NOT EXISTS idx_federalgovernmentflag ON contract_csv (federalgovernmentflag);
--CREATE INDEX IF NOT EXISTS idx_minorityownedbusinessflag ON contract_csv (minorityownedbusinessflag);
--CREATE INDEX IF NOT EXISTS idx_apaobflag ON contract_csv (apaobflag);
--CREATE INDEX IF NOT EXISTS idx_tribalgovernmentflag ON contract_csv (tribalgovernmentflag);
--CREATE INDEX IF NOT EXISTS idx_baobflag ON contract_csv (baobflag);
--CREATE INDEX IF NOT EXISTS idx_naobflag ON contract_csv (naobflag);
--CREATE INDEX IF NOT EXISTS idx_saaobflag ON contract_csv (saaobflag);
--CREATE INDEX IF NOT EXISTS idx_nonprofitorganizationflag ON contract_csv (nonprofitorganizationflag);
--CREATE INDEX IF NOT EXISTS idx_isothernotforprofitorganization ON contract_csv (isothernotforprofitorganization);
--CREATE INDEX IF NOT EXISTS idx_isforprofitorganization ON contract_csv (isforprofitorganization);
--CREATE INDEX IF NOT EXISTS idx_isfoundation ON contract_csv (isfoundation);
--CREATE INDEX IF NOT EXISTS idx_haobflag ON contract_csv (haobflag);
--CREATE INDEX IF NOT EXISTS idx_ishispanicservicinginstitution ON contract_csv (ishispanicservicinginstitution);
--CREATE INDEX IF NOT EXISTS idx_emergingsmallbusinessflag ON contract_csv (emergingsmallbusinessflag);
--CREATE INDEX IF NOT EXISTS idx_hospitalflag ON contract_csv (hospitalflag);
--CREATE INDEX IF NOT EXISTS idx_contractingofficerbusinesssizedetermination ON contract_csv (contractingofficerbusinesssizedetermination);
--CREATE INDEX IF NOT EXISTS idx_is1862landgrantcollege ON contract_csv (is1862landgrantcollege);
--CREATE INDEX IF NOT EXISTS idx_is1890landgrantcollege ON contract_csv (is1890landgrantcollege);
--CREATE INDEX IF NOT EXISTS idx_is1994landgrantcollege ON contract_csv (is1994landgrantcollege);
--CREATE INDEX IF NOT EXISTS idx_isveterinarycollege ON contract_csv (isveterinarycollege);
--CREATE INDEX IF NOT EXISTS idx_isveterinaryhospital ON contract_csv (isveterinaryhospital);
--CREATE INDEX IF NOT EXISTS idx_isprivateuniversityorcollege ON contract_csv (isprivateuniversityorcollege);
--CREATE INDEX IF NOT EXISTS idx_isschoolofforestry ON contract_csv (isschoolofforestry);
--CREATE INDEX IF NOT EXISTS idx_isstatecontrolledinstitutionofhigherlearning ON contract_csv (isstatecontrolledinstitutionofhigherlearning);
--CREATE INDEX IF NOT EXISTS idx_isserviceprovider ON contract_csv (isserviceprovider);
--CREATE INDEX IF NOT EXISTS idx_receivescontracts ON contract_csv (receivescontracts);
--CREATE INDEX IF NOT EXISTS idx_receivesgrants ON contract_csv (receivesgrants);
--CREATE INDEX IF NOT EXISTS idx_receivescontractsandgrants ON contract_csv (receivescontractsandgrants);
--CREATE INDEX IF NOT EXISTS idx_isairportauthority ON contract_csv (isairportauthority);
--CREATE INDEX IF NOT EXISTS idx_iscouncilofgovernments ON contract_csv (iscouncilofgovernments);
--CREATE INDEX IF NOT EXISTS idx_ishousingauthoritiespublicortribal ON contract_csv (ishousingauthoritiespublicortribal);
--CREATE INDEX IF NOT EXISTS idx_isinterstateentity ON contract_csv (isinterstateentity);
--CREATE INDEX IF NOT EXISTS idx_isplanningcommission ON contract_csv (isplanningcommission);
--CREATE INDEX IF NOT EXISTS idx_isportauthority ON contract_csv (isportauthority);
--CREATE INDEX IF NOT EXISTS idx_istransitauthority ON contract_csv (istransitauthority);
--CREATE INDEX IF NOT EXISTS idx_issubchapterscorporation ON contract_csv (issubchapterscorporation);
--CREATE INDEX IF NOT EXISTS idx_islimitedliabilitycorporation ON contract_csv (islimitedliabilitycorporation);
--CREATE INDEX IF NOT EXISTS idx_isforeignownedandlocated ON contract_csv (isforeignownedandlocated);
--CREATE INDEX IF NOT EXISTS idx_isarchitectureandengineering ON contract_csv (isarchitectureandengineering);
--CREATE INDEX IF NOT EXISTS idx_isdotcertifieddisadvantagedbusinessenterprise ON contract_csv (isdotcertifieddisadvantagedbusinessenterprise);
--CREATE INDEX IF NOT EXISTS idx_iscitylocalgovernment ON contract_csv (iscitylocalgovernment);
--CREATE INDEX IF NOT EXISTS idx_iscommunitydevelopedcorporationownedfirm ON contract_csv (iscommunitydevelopedcorporationownedfirm);
--CREATE INDEX IF NOT EXISTS idx_iscommunitydevelopmentcorporation ON contract_csv (iscommunitydevelopmentcorporation);
--CREATE INDEX IF NOT EXISTS idx_isconstructionfirm ON contract_csv (isconstructionfirm);
--CREATE INDEX IF NOT EXISTS idx_ismanufacturerofgoods ON contract_csv (ismanufacturerofgoods);
--CREATE INDEX IF NOT EXISTS idx_iscorporateentitynottaxexempt ON contract_csv (iscorporateentitynottaxexempt);
--CREATE INDEX IF NOT EXISTS idx_iscountylocalgovernment ON contract_csv (iscountylocalgovernment);
--CREATE INDEX IF NOT EXISTS idx_isdomesticshelter ON contract_csv (isdomesticshelter);
--CREATE INDEX IF NOT EXISTS idx_isfederalgovernmentagency ON contract_csv (isfederalgovernmentagency);
--CREATE INDEX IF NOT EXISTS idx_isfederallyfundedresearchanddevelopmentcorp ON contract_csv (isfederallyfundedresearchanddevelopmentcorp);
--CREATE INDEX IF NOT EXISTS idx_isforeigngovernment ON contract_csv (isforeigngovernment);
--CREATE INDEX IF NOT EXISTS idx_isindiantribe ON contract_csv (isindiantribe);
--CREATE INDEX IF NOT EXISTS idx_isintermunicipallocalgovernment ON contract_csv (isintermunicipallocalgovernment);
--CREATE INDEX IF NOT EXISTS idx_isinternationalorganization ON contract_csv (isinternationalorganization);
--CREATE INDEX IF NOT EXISTS idx_islaborsurplusareafirm ON contract_csv (islaborsurplusareafirm);
--CREATE INDEX IF NOT EXISTS idx_islocalgovernmentowned ON contract_csv (islocalgovernmentowned);
--CREATE INDEX IF NOT EXISTS idx_ismunicipalitylocalgovernment ON contract_csv (ismunicipalitylocalgovernment);
--CREATE INDEX IF NOT EXISTS idx_isnativehawaiianownedorganizationorfirm ON contract_csv (isnativehawaiianownedorganizationorfirm);
--CREATE INDEX IF NOT EXISTS idx_isotherbusinessororganization ON contract_csv (isotherbusinessororganization);
--CREATE INDEX IF NOT EXISTS idx_isotherminorityowned ON contract_csv (isotherminorityowned);
--CREATE INDEX IF NOT EXISTS idx_ispartnershiporlimitedliabilitypartnership ON contract_csv (ispartnershiporlimitedliabilitypartnership);
--CREATE INDEX IF NOT EXISTS idx_isschooldistrictlocalgovernment ON contract_csv (isschooldistrictlocalgovernment);
--CREATE INDEX IF NOT EXISTS idx_issmallagriculturalcooperative ON contract_csv (issmallagriculturalcooperative);
--CREATE INDEX IF NOT EXISTS idx_issoleproprietorship ON contract_csv (issoleproprietorship);
--CREATE INDEX IF NOT EXISTS idx_istownshiplocalgovernment ON contracat_csv (istownshiplocalgovernment);
--CREATE INDEX IF NOT EXISTS idx_istriballyownedfirm ON contract_csv (istriballyownedfirm);
--CREATE INDEX IF NOT EXISTS idx_istribalcollege ON contract_csv (istribalcollege);
--CREATE INDEX IF NOT EXISTS idx_isalaskannativeownedcorporationorfirm ON contract_csv (isalaskannativeownedcorporationorfirm);
--CREATE INDEX IF NOT EXISTS idx_iscorporateentitytaxexempt ON contract_csv (iscorporateentitytaxexempt);
--CREATE INDEX IF NOT EXISTS idx_iswomenownedsmallbusiness ON contract_csv (iswomenownedsmallbusiness);
--CREATE INDEX IF NOT EXISTS idx_isecondisadvwomenownedsmallbusiness ON contract_csv (isecondisadvwomenownedsmallbusiness);
--CREATE INDEX IF NOT EXISTS idx_isjointventurewomenownedsmallbusiness ON contract_csv (isjointventurewomenownedsmallbusiness);
--CREATE INDEX IF NOT EXISTS idx_isjointventureecondisadvwomenownedsmallbusiness ON contract_csv (isjointventureecondisadvwomenownedsmallbusiness);
--CREATE INDEX IF NOT EXISTS idx_walshhealyact ON contract_csv (walshhealyact);
--CREATE INDEX IF NOT EXISTS idx_servicecontractact ON contract_csv (servicecontractact);
--CREATE INDEX IF NOT EXISTS idx_davisbaconact ON contract_csv (davisbaconact);
--CREATE INDEX IF NOT EXISTS idx_clingercohenact ON contract_csv (clingercohenact);
--CREATE INDEX IF NOT EXISTS idx_otherstatutoryauthority ON contract_csv (otherstatutoryauthority);
--CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive1 ON contract_csv (prime_awardee_executive1);
--CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive1_compensation ON contract_csv (prime_awardee_executive1_compensation);
--CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive2 ON contract_csv (prime_awardee_executive2);
--CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive2_compensation ON contract_csv (prime_awardee_executive2_compensation);
--CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive3 ON contract_csv (prime_awardee_executive3);
--CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive3_compensation ON contract_csv (prime_awardee_executive3_compensation);
--CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive4 ON contract_csv (prime_awardee_executive4);
--CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive4_compensation ON contract_csv (prime_awardee_executive4_compensation);
--CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive5 ON contract_csv (prime_awardee_executive5);
--CREATE INDEX IF NOT EXISTS idx_prime_awardee_executive5_compensation ON contract_csv (prime_awardee_executive5_compensation);
--CREATE INDEX IF NOT EXISTS idx_interagencycontractingauthority ON contract_csv (interagencycontractingauthority);

DROP INDEX IF EXISTS idx_unique_transaction_id;
DROP INDEX IF EXISTS idx_transaction_status;
DROP INDEX IF EXISTS idx_dollarsobligated;
DROP INDEX IF EXISTS idx_baseandexercisedoptionsvalue;
DROP INDEX IF EXISTS idx_baseandalloptionsvalue;
DROP INDEX IF EXISTS idx_maj_agency_cat;
DROP INDEX IF EXISTS idx_mod_agency;
DROP INDEX IF EXISTS idx_maj_fund_agency_cat;
DROP INDEX IF EXISTS idx_contractingofficeagencyid;
DROP INDEX IF EXISTS idx_contractingofficeid;
DROP INDEX IF EXISTS idx_fundingrequestingagencyid;
DROP INDEX IF EXISTS idx_fundingrequestingofficeid;
DROP INDEX IF EXISTS idx_fundedbyforeignentity;
DROP INDEX IF EXISTS idx_signeddate;
DROP INDEX IF EXISTS idx_effectivedate;
DROP INDEX IF EXISTS idx_currentcompletiondate;
DROP INDEX IF EXISTS idx_ultimatecompletiondate;
DROP INDEX IF EXISTS idx_lastdatetoorder;
DROP INDEX IF EXISTS idx_contractactiontype;
DROP INDEX IF EXISTS idx_reasonformodification;
DROP INDEX IF EXISTS idx_typeofcontractpricing;
DROP INDEX IF EXISTS idx_priceevaluationpercentdifference;
DROP INDEX IF EXISTS idx_subcontractplan;
DROP INDEX IF EXISTS idx_lettercontract;
DROP INDEX IF EXISTS idx_multiyearcontract;
DROP INDEX IF EXISTS idx_performancebasedservicecontract;
DROP INDEX IF EXISTS idx_majorprogramcode;
DROP INDEX IF EXISTS idx_contingencyhumanitarianpeacekeepingoperation;
DROP INDEX IF EXISTS idx_contractfinancing;
DROP INDEX IF EXISTS idx_costorpricingdata;
DROP INDEX IF EXISTS idx_costaccountingstandardsclause;
DROP INDEX IF EXISTS idx_descriptionofcontractrequirement;
DROP INDEX IF EXISTS idx_purchasecardaspaymentmethod;
DROP INDEX IF EXISTS idx_numberofactions;
DROP INDEX IF EXISTS idx_nationalinterestactioncode;
DROP INDEX IF EXISTS idx_progsourceagency;
DROP INDEX IF EXISTS idx_progsourceaccount;
DROP INDEX IF EXISTS idx_progsourcesubacct;
DROP INDEX IF EXISTS idx_account_title;
DROP INDEX IF EXISTS idx_rec_flag;
DROP INDEX IF EXISTS idx_typeofidc;
DROP INDEX IF EXISTS idx_multipleorsingleawardidc;
DROP INDEX IF EXISTS idx_programacronym;
DROP INDEX IF EXISTS idx_vendorname;
DROP INDEX IF EXISTS idx_vendoralternatename;
DROP INDEX IF EXISTS idx_vendorlegalorganizationname;
DROP INDEX IF EXISTS idx_vendordoingasbusinessname;
DROP INDEX IF EXISTS idx_divisionname;
DROP INDEX IF EXISTS idx_divisionnumberorofficecode;
DROP INDEX IF EXISTS idx_vendorenabled;
DROP INDEX IF EXISTS idx_vendorlocationdisableflag;
DROP INDEX IF EXISTS idx_ccrexception;
DROP INDEX IF EXISTS idx_streetaddress;
DROP INDEX IF EXISTS idx_streetaddress2;
DROP INDEX IF EXISTS idx_streetaddress3;
DROP INDEX IF EXISTS idx_city;
DROP INDEX IF EXISTS idx_state;
DROP INDEX IF EXISTS idx_zipcode;
DROP INDEX IF EXISTS idx_vendorcountrycode;
DROP INDEX IF EXISTS idx_vendor_state_code;
DROP INDEX IF EXISTS idx_vendor_cd;
DROP INDEX IF EXISTS idx_congressionaldistrict;
DROP INDEX IF EXISTS idx_vendorsitecode;
DROP INDEX IF EXISTS idx_vendoralternatesitecode;
DROP INDEX IF EXISTS idx_dunsnumber;
DROP INDEX IF EXISTS idx_parentdunsnumber;
DROP INDEX IF EXISTS idx_phoneno;
DROP INDEX IF EXISTS idx_faxno;
DROP INDEX IF EXISTS idx_registrationdate;
DROP INDEX IF EXISTS idx_renewaldate;
DROP INDEX IF EXISTS idx_mod_parent;
DROP INDEX IF EXISTS idx_locationcode;
DROP INDEX IF EXISTS idx_statecode;
DROP INDEX IF EXISTS idx_PlaceofPerformanceCity;
DROP INDEX IF EXISTS idx_pop_state_code;
DROP INDEX IF EXISTS idx_placeofperformancecountrycode;
DROP INDEX IF EXISTS idx_placeofperformancezipcode;
DROP INDEX IF EXISTS idx_pop_cd;
DROP INDEX IF EXISTS idx_placeofperformancecongressionaldistrict;
DROP INDEX IF EXISTS idx_psc_cat;
DROP INDEX IF EXISTS idx_productorservicecode;
DROP INDEX IF EXISTS idx_systemequipmentcode;
DROP INDEX IF EXISTS idx_claimantprogramcode;
DROP INDEX IF EXISTS idx_principalnaicscode;
DROP INDEX IF EXISTS idx_informationtechnologycommercialitemcategory;
DROP INDEX IF EXISTS idx_gfe_gfp;
DROP INDEX IF EXISTS idx_useofepadesignatedproducts;
DROP INDEX IF EXISTS idx_recoveredmaterialclauses;
DROP INDEX IF EXISTS idx_seatransportation;
DROP INDEX IF EXISTS idx_contractbundling;
DROP INDEX IF EXISTS idx_consolidatedcontract;
DROP INDEX IF EXISTS idx_countryoforigin;
DROP INDEX IF EXISTS idx_placeofmanufacture;
DROP INDEX IF EXISTS idx_manufacturingorganizationtype;
DROP INDEX IF EXISTS idx_agencyid;
DROP INDEX IF EXISTS idx_piid;
DROP INDEX IF EXISTS idx_modnumber;
DROP INDEX IF EXISTS idx_transactionnumber;
DROP INDEX IF EXISTS idx_fiscal_year;
DROP INDEX IF EXISTS idx_idvagencyid;
DROP INDEX IF EXISTS idx_idvpiid;
DROP INDEX IF EXISTS idx_idvmodificationnumber;
DROP INDEX IF EXISTS idx_solicitationid;
DROP INDEX IF EXISTS idx_extentcompeted;
DROP INDEX IF EXISTS idx_reasonnotcompeted;
DROP INDEX IF EXISTS idx_numberofoffersreceived;
DROP INDEX IF EXISTS idx_commercialitemacquisitionprocedures;
DROP INDEX IF EXISTS idx_commercialitemtestprogram;
DROP INDEX IF EXISTS idx_smallbusinesscompetitivenessdemonstrationprogram;
DROP INDEX IF EXISTS idx_a76action;
DROP INDEX IF EXISTS idx_competitiveprocedures;
DROP INDEX IF EXISTS idx_solicitationprocedures;
DROP INDEX IF EXISTS idx_typeofsetaside;
DROP INDEX IF EXISTS idx_localareasetaside;
DROP INDEX IF EXISTS idx_evaluatedpreference;
DROP INDEX IF EXISTS idx_fedbizopps;
DROP INDEX IF EXISTS idx_research;
DROP INDEX IF EXISTS idx_statutoryexceptiontofairopportunity;
DROP INDEX IF EXISTS idx_organizationaltype;
DROP INDEX IF EXISTS idx_numberofemployees;
DROP INDEX IF EXISTS idx_annualrevenue;
DROP INDEX IF EXISTS idx_firm8aflag;
DROP INDEX IF EXISTS idx_hubzoneflag;
DROP INDEX IF EXISTS idx_sdbflag;
DROP INDEX IF EXISTS idx_issbacertifiedsmalldisadvantagedbusiness;
DROP INDEX IF EXISTS idx_shelteredworkshopflag;
DROP INDEX IF EXISTS idx_hbcuflag;
DROP INDEX IF EXISTS idx_educationalinstitutionflag;
DROP INDEX IF EXISTS idx_womenownedflag;
DROP INDEX IF EXISTS idx_veteranownedflag;
DROP INDEX IF EXISTS idx_srdvobflag;
DROP INDEX IF EXISTS idx_localgovernmentflag;
DROP INDEX IF EXISTS idx_minorityinstitutionflag;
DROP INDEX IF EXISTS idx_aiobflag;
DROP INDEX IF EXISTS idx_stategovernmentflag;
DROP INDEX IF EXISTS idx_federalgovernmentflag;
DROP INDEX IF EXISTS idx_minorityownedbusinessflag;
DROP INDEX IF EXISTS idx_apaobflag;
DROP INDEX IF EXISTS idx_tribalgovernmentflag;
DROP INDEX IF EXISTS idx_baobflag;
DROP INDEX IF EXISTS idx_naobflag;
DROP INDEX IF EXISTS idx_saaobflag;
DROP INDEX IF EXISTS idx_nonprofitorganizationflag;
DROP INDEX IF EXISTS idx_isothernotforprofitorganization;
DROP INDEX IF EXISTS idx_isforprofitorganization;
DROP INDEX IF EXISTS idx_isfoundation;
DROP INDEX IF EXISTS idx_haobflag;
DROP INDEX IF EXISTS idx_ishispanicservicinginstitution;
DROP INDEX IF EXISTS idx_emergingsmallbusinessflag;
DROP INDEX IF EXISTS idx_hospitalflag;
DROP INDEX IF EXISTS idx_contractingofficerbusinesssizedetermination;
DROP INDEX IF EXISTS idx_is1862landgrantcollege;
DROP INDEX IF EXISTS idx_is1890landgrantcollege;
DROP INDEX IF EXISTS idx_is1994landgrantcollege;
DROP INDEX IF EXISTS idx_isveterinarycollege;
DROP INDEX IF EXISTS idx_isveterinaryhospital;
DROP INDEX IF EXISTS idx_isprivateuniversityorcollege;
DROP INDEX IF EXISTS idx_isschoolofforestry;
DROP INDEX IF EXISTS idx_isstatecontrolledinstitutionofhigherlearning;
DROP INDEX IF EXISTS idx_isserviceprovider;
DROP INDEX IF EXISTS idx_receivescontracts;
DROP INDEX IF EXISTS idx_receivesgrants;
DROP INDEX IF EXISTS idx_receivescontractsandgrants;
DROP INDEX IF EXISTS idx_isairportauthority;
DROP INDEX IF EXISTS idx_iscouncilofgovernments;
DROP INDEX IF EXISTS idx_ishousingauthoritiespublicortribal;
DROP INDEX IF EXISTS idx_isinterstateentity;
DROP INDEX IF EXISTS idx_isplanningcommission;
DROP INDEX IF EXISTS idx_isportauthority;
DROP INDEX IF EXISTS idx_istransitauthority;
DROP INDEX IF EXISTS idx_issubchapterscorporation;
DROP INDEX IF EXISTS idx_islimitedliabilitycorporation;
DROP INDEX IF EXISTS idx_isforeignownedandlocated;
DROP INDEX IF EXISTS idx_isarchitectureandengineering;
DROP INDEX IF EXISTS idx_isdotcertifieddisadvantagedbusinessenterprise;
DROP INDEX IF EXISTS idx_iscitylocalgovernment;
DROP INDEX IF EXISTS idx_iscommunitydevelopedcorporationownedfirm;
DROP INDEX IF EXISTS idx_iscommunitydevelopmentcorporation;
DROP INDEX IF EXISTS idx_isconstructionfirm;
DROP INDEX IF EXISTS idx_ismanufacturerofgoods;
DROP INDEX IF EXISTS idx_iscorporateentitynottaxexempt;
DROP INDEX IF EXISTS idx_iscountylocalgovernment;
DROP INDEX IF EXISTS idx_isdomesticshelter;
DROP INDEX IF EXISTS idx_isfederalgovernmentagency;
DROP INDEX IF EXISTS idx_isfederallyfundedresearchanddevelopmentcorp;
DROP INDEX IF EXISTS idx_isforeigngovernment;
DROP INDEX IF EXISTS idx_isindiantribe;
DROP INDEX IF EXISTS idx_isintermunicipallocalgovernment;
DROP INDEX IF EXISTS idx_isinternationalorganization;
DROP INDEX IF EXISTS idx_islaborsurplusareafirm;
DROP INDEX IF EXISTS idx_islocalgovernmentowned;
DROP INDEX IF EXISTS idx_ismunicipalitylocalgovernment;
DROP INDEX IF EXISTS idx_isnativehawaiianownedorganizationorfirm;
DROP INDEX IF EXISTS idx_isotherbusinessororganization;
DROP INDEX IF EXISTS idx_isotherminorityowned;
DROP INDEX IF EXISTS idx_ispartnershiporlimitedliabilitypartnership;
DROP INDEX IF EXISTS idx_isschooldistrictlocalgovernment;
DROP INDEX IF EXISTS idx_issmallagriculturalcooperative;
DROP INDEX IF EXISTS idx_issoleproprietorship;
DROP INDEX IF EXISTS idx_istownshiplocalgovernment;
DROP INDEX IF EXISTS idx_istriballyownedfirm;
DROP INDEX IF EXISTS idx_istribalcollege;
DROP INDEX IF EXISTS idx_isalaskannativeownedcorporationorfirm;
DROP INDEX IF EXISTS idx_iscorporateentitytaxexempt;
DROP INDEX IF EXISTS idx_iswomenownedsmallbusiness;
DROP INDEX IF EXISTS idx_isecondisadvwomenownedsmallbusiness;
DROP INDEX IF EXISTS idx_isjointventurewomenownedsmallbusiness;
DROP INDEX IF EXISTS idx_isjointventureecondisadvwomenownedsmallbusiness;
DROP INDEX IF EXISTS idx_walshhealyact;
DROP INDEX IF EXISTS idx_servicecontractact;
DROP INDEX IF EXISTS idx_davisbaconact;
DROP INDEX IF EXISTS idx_clingercohenact;
DROP INDEX IF EXISTS idx_otherstatutoryauthority;
DROP INDEX IF EXISTS idx_prime_awardee_executive1;
DROP INDEX IF EXISTS idx_prime_awardee_executive1_compensation;
DROP INDEX IF EXISTS idx_prime_awardee_executive2;
DROP INDEX IF EXISTS idx_prime_awardee_executive2_compensation;
DROP INDEX IF EXISTS idx_prime_awardee_executive3;
DROP INDEX IF EXISTS idx_prime_awardee_executive3_compensation;
DROP INDEX IF EXISTS idx_prime_awardee_executive4;
DROP INDEX IF EXISTS idx_prime_awardee_executive4_compensation;
DROP INDEX IF EXISTS idx_prime_awardee_executive5;
DROP INDEX IF EXISTS idx_prime_awardee_executive5_compensation;
DROP INDEX IF EXISTS idx_interagencycontractingauthority;
DROP INDEX IF EXISTS idx_last_modified_date;


--
--
-- GENERIC FUNCTIONS
--
--


CREATE OR REPLACE FUNCTION nullify_text(field TEXT) RETURNS TEXT AS $$
DECLARE
  aux TEXT;
BEGIN
  aux := TRIM(BOTH FROM field);
  IF aux !~ '[a-zA-Z0-9]' OR aux = '' THEN
    aux := NULL;
  END IF;
  RETURN aux;
END;
$$ LANGUAGE plpgsql;

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

CREATE OR REPLACE FUNCTION left_text(field TEXT) RETURNS TEXT AS $$
DECLARE
  aux TEXT;
BEGIN
  IF position(':' in field) = 0 THEN
    aux = UPPER(field);
  ELSE
    aux = UPPER(TRIM(BOTH FROM substring(field from 1 for position(':' in field) - 1)));
  END IF;
  IF aux !~ '[a-zA-Z0-9]' OR aux = '' THEN
    aux = NULL;
  END IF;
  RETURN aux;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION right_text(field TEXT) RETURNS TEXT AS $$
DECLARE
  aux TEXT;
BEGIN
  IF position(':' in field) = 0 THEN
    aux = NULL;
  ELSE
    aux = TRIM(BOTH FROM substring(field from position(':' in field) + 1));
  END IF;
  IF aux !~ '[a-zA-Z0-9]' OR aux = '' THEN
    aux = NULL;
  END IF;
  RETURN aux;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION validate_date(field TEXT) RETURNS DATE AS $$
BEGIN
  IF field = '01/01/1900' THEN
    RETURN NULL;
  ELSE
    RETURN cast (field AS DATE);
  END IF;
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


--
--
-- SPECIFIC FUNCTIONS
--
--

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

CREATE OR REPLACE FUNCTION letter_contract(field TEXT) RETURNS CHAR AS $$
BEGIN
  CASE left_text(field)
      WHEN 'N', 'Y' THEN
        RETURN 'Y';
      ELSE
        RETURN left_text(field);
  END CASE;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION contract_financing(field TEXT) RETURNS CHAR AS $$
BEGIN
  CASE left_text(field)
      WHEN 'B', 'N', 'X' THEN
        RETURN 'X';
      ELSE
        RETURN left_text(field);
  END CASE;
END;
$$ LANGUAGE plpgsql;

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


CREATE OR REPLACE FUNCTION place_of_manufacture(field TEXT) RETURNS CHAR AS $$
BEGIN
  CASE left_text(field)
    WHEN '' THEN
      RETURN NULL;
    WHEN '1', '!', 'S', 'U' THEN
      RETURN 'X';
    ELSE
      RETURN left_text(field);
  END CASE;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION a76action(field TEXT) RETURNS CHAR AS $$
BEGIN
  CASE field
    WHEN 'Yes' THEN
      RETURN 'Y';
    WHEN 'No' THEN
      RETURN 'N';
    ELSE
      RETURN field;
  END CASE;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION solicitation_procedures(field TEXT) RETURNS CHAR AS $$
BEGIN
  CASE left_text(field)
    WHEN 'M', 'N' THEN
      RETURN 'X';
    WHEN 'NONE' THEN
      RETURN NULL;
    ELSE
      RETURN left_text(field);
  END CASE;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION local_area_set_aside(field TEXT) RETURNS CHAR AS $$
BEGIN
  CASE field
    WHEN 'BSDF' THEN
      RETURN 'X';
    ELSE
      RETURN field;
  END CASE;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION is_dot_certified(field TEXT) RETURNS CHAR AS $$
BEGIN
  CASE field
    WHEN 'true' THEN
      RETURN 'Y';
    ELSE
      RETURN field;
  END CASE;
END;
$$ LANGUAGE plpgsql;

INSERT INTO contract_all
(id,
 unique_transaction_id,
 last_modified_date,
 query_progress,
 transaction_status,
 dollars_obligated,
 base_and_exercised_options_value,
 base_and_all_options_value,
 contracting_department_id,
 contracting_department_name,
 contracting_agency_id,
 contracting_agency_name,
 contracting_agency_id_redundant,
 contracting_agency_name_redundant,
 contracting_office_id,
 contracting_office_name,
 funding_department_id,
 funding_department_name,
 funding_agency_id,
 funding_agency_name,
 funding_office_id,
 funding_office_name,
 funded_by_foreign_entity,
 signed_date,
 effective_date,
 current_completion_date,
 ultimate_completion_date,
 last_date_to_order,
 contract_action_type,
 reason_for_modification,
 type_of_contract_pricing,
 price_evaluation_percent_difference,
 subcontract_plan,
 letter_contract,
 multiyear_contract,
 performance_based_service_contract,
 major_program_code,
 contingency_humanitarian_peacekeeping_operation,
 contract_financing,
 cost_or_pricing_data,
 cost_accounting_standards_clause,
 descriptionofcontractrequirement,
 purchase_card_as_payment_method,
 number_of_actions,
 national_interest_action,
 prog_source_agency,
 prog_source_account,
 prog_source_subacct,
 account_title,
 recovery_flag,
 type_of_idc,
 multiple_or_single_award_idc,
 program_acronym,
 contractor_name,
 contractor_alternate_name,
 contractor_legal_organization_name,
 contractor_doing_as_business_name,
 contractor_division_name,
 contractor_division_number_or_office_code,
 contractor_enabled,
 contractor_location_disable_flag,
 contractor_ccr_exception,
 contractor_street_address_1,
 contractor_street_address_2,
 contractor_street_address_3,
 contractor_city,
 contractor_state,
 contractor_state_redundant,
 contractor_zip_code,
 contractor_country,
 contractor_congressional_district,
 contractor_congressional_district_redundant,
 contractor_site_code,
 contractor_alternate_site_code,
 contractor_duns_number,
 contractor_parent_duns_number,
 contractor_phone_number,
 contractor_fax_number,
 contractor_registration_date,
 contractor_renewal_date,
 contractor_parent_name,
 location_code,
 place_of_performance_city,
 place_of_performance_state,
 place_of_performance_state_redundant,
 place_of_performance_country,
 place_of_performance_zip_code,
 place_of_performance_congressional_district,
 place_of_performance_congressional_district_redundant,
 product_or_service_category,
 product_or_service_code,
 system_or_equipment_code,
 system_or_equipment_description,
 claimant_program,
 naics,
 information_technology_commercial_item_category,
 gfe_gfp,
 use_of_epa_designated_products,
 recovered_material_clauses,
 sea_transportation,
 contract_bundling,
 consolidated_contract,
 country_of_origin,
 place_of_manufacture,
 manufacturing_organization_type,
 agency_id,
 agency_name,
 piid,
 modification_number,
 transaction_number,
 fiscal_year,
 idv_agency_id,
 idv_piid,
 idv_modification_number,
 solicitation_id,
 extent_competed,
 reason_not_competed,
 number_of_offers_received,
 commercial_item_acquisition_procedures,
 commercial_item_test_program,
 small_business_competitiveness_demonstration_program,
 a76action,
 competitive_procedures,
 solicitation_procedures,
 type_of_set_aside,
 local_area_set_aside,
 evaluated_preference,
 fedbizopps,
 research,
 statutory_exception_to_fair_opportunity,
 contractor_organizational_type,
 contractor_number_of_employees,
 contractor_annual_revenue,
 firm8aflag,
 hubzoneflag,
 sdbflag,
 issbacertifiedsmalldisadvantagedbusiness,
 shelteredworkshopflag,
 hbcuflag,
 educationalinstitutionflag,
 womenownedflag,
 veteranownedflag,
 srdvobflag,
 localgovernmentflag,
 minorityinstitutionflag,
 aiobflag,
 stategovernmentflag,
 federalgovernmentflag,
 minorityownedbusinessflag,
 apaobflag,
 tribalgovernmentflag,
 baobflag,
 naobflag,
 saaobflag,
 nonprofitorganizationflag,
 isothernotforprofitorganization,
 isforprofitorganization,
 isfoundation,
 haobflag,
 ishispanicservicinginstitution,
 emergingsmallbusinessflag,
 hospitalflag,
 contractingofficerbusinesssizedetermination,
 is1862landgrantcollege,
 is1890landgrantcollege,
 is1994landgrantcollege,
 isveterinarycollege,
 isveterinaryhospital,
 isprivateuniversityorcollege,
 isschoolofforestry,
 isstatecontrolledinstitutionofhigherlearning,
 isserviceprovider,
 receivescontracts,
 receivesgrants,
 receivescontractsandgrants,
 isairportauthority,
 iscouncilofgovernments,
 ishousingauthoritiespublicortribal,
 isinterstateentity,
 isplanningcommission,
 isportauthority,
 istransitauthority,
 issubchapterscorporation,
 islimitedliabilitycorporation,
 isforeignownedandlocated,
 isarchitectureandengineering,
 isdotcertifieddisadvantagedbusinessenterprise,
 iscitylocalgovernment,
 iscommunitydevelopedcorporationownedfirm,
 iscommunitydevelopmentcorporation,
 isconstructionfirm,
 ismanufacturerofgoods,
 iscorporateentitynottaxexempt,
 iscountylocalgovernment,
 isdomesticshelter,
 isfederalgovernmentagency,
 isfederallyfundedresearchanddevelopmentcorp,
 isforeigngovernment,
 isindiantribe,
 isintermunicipallocalgovernment,
 isinternationalorganization,
 islaborsurplusareafirm,
 islocalgovernmentowned,
 ismunicipalitylocalgovernment,
 isnativehawaiianownedorganizationorfirm,
 isotherbusinessororganization,
 isotherminorityowned,
 ispartnershiporlimitedliabilitypartnership,
 isschooldistrictlocalgovernment,
 issmallagriculturalcooperative,
 issoleproprietorship,
 istownshiplocalgovernment,
 istriballyownedfirm,
 istribalcollege,
 isalaskannativeownedcorporationorfirm,
 iscorporateentitytaxexempt,
 iswomenownedsmallbusiness,
 isecondisadvwomenownedsmallbusiness,
 isjointventurewomenownedsmallbusiness,
 isjointventureecondisadvwomenownedsmallbusiness,
 walsh_healy_act,
 service_contract_act,
 davis_bacon_act,
 clinger_cohen_act,
 other_statutory_authority,
 prime_awardee_executive1,
 prime_awardee_executive1_compensation,
 prime_awardee_executive2,
 prime_awardee_executive2_compensation,
 prime_awardee_executive3,
 prime_awardee_executive3_compensation,
 prime_awardee_executive4,
 prime_awardee_executive4_compensation,
 prime_awardee_executive5,
 prime_awardee_executive5_compensation,
 interagency_contracting_authority)
  SELECT
    id,
    unique_transaction_id,
    last_modified_date,
    nextval('query_progress'),
    transaction_status,
    cast(dollarsobligated AS MONEY),
    cast(baseandexercisedoptionsvalue AS MONEY),
    cast(baseandalloptionsvalue AS MONEY),
    left_text(maj_agency_cat),
    -- contracting_department_id OK
    right_text(maj_agency_cat),
    -- contracting_department_name
    left_text(contractingofficeagencyid),
    -- contracting_agency_id
    right_text(contractingofficeagencyid),
    -- contracting_agency_name
    left_text(mod_agency),
    -- contracting_agency_id_redundant
    right_text(mod_agency),
    -- contracting_agency_name_redundant
    left_text(contractingofficeid),
    -- contracting_office_id
    right_text(contractingofficeid),
    -- contracting_office_name
    left_text(maj_fund_agency_cat),
    -- funding_department_id
    right_text(maj_fund_agency_cat),
    -- funding_department_name
    left_text(fundingrequestingagencyid),
    -- funding_agency_id
    right_text(fundingrequestingagencyid),
    -- funding_agency_name
    left_text(fundingrequestingofficeid),
    -- funding_office_id
    right_text(fundingrequestingofficeid),
    -- funding_office_name
    funded_by_foreign_entity(fundedbyforeignentity),
    validate_date(signeddate),
    validate_date(effectivedate),
    validate_date(currentcompletiondate),
    validate_date(ultimatecompletiondate),
    validate_date(lastdatetoorder),
    contract_action_type(contractactiontype),
    left_text(reasonformodification),
    type_of_contract_pricing(typeofcontractpricing),
    cast(priceevaluationpercentdifference AS REAL),
    left_text(subcontractplan),
    letter_contract(lettercontract),
    left_text(multiyearcontract),
    performance_based_service_contract(performancebasedservicecontract),
    majorprogramcode,
    left_text(contingencyhumanitarianpeacekeepingoperation),
    contract_financing(contractfinancing),
    left_text(costorpricingdata),
    costaccountingstandardsclause,
    descriptionofcontractrequirement,
    left_text(purchasecardaspaymentmethod),
    CAST(numberofactions AS INTEGER),
    national_interest_action(nationalinterestactioncode),
    progsourceagency,
    progsourceaccount,
    progsourcesubacct,
    account_title,
    rec_flag,
    type_of_idc(typeofidc),
    left_text(multipleorsingleawardidc),
    programacronym,
    vendorname,
    vendoralternatename,
    vendorlegalorganizationname,
    vendordoingasbusinessname,
    divisionname,
    divisionnumberorofficecode,
    vendorenabled,
    vendorlocationdisableflag,
    ccr_exception(ccrexception),
    streetaddress,
    streetaddress2,
    streetaddress3,
    city,
    state,
    vendor_state_code,
    zipcode,
    validate_country(vendorcountrycode),
    congressionaldistrict,
    vendor_cd,
    vendorsitecode,
    vendoralternatesitecode,
    dunsnumber,
    parentdunsnumber,
    phoneno,
    faxno,
    validate_date(registrationdate),
    validate_date(renewaldate),
    mod_parent,
    locationcode,
    PlaceofPerformanceCity,
    validate_state(pop_state_code),
    validate_state(statecode),
    validate_country(placeofperformancecountrycode),
    placeofperformancezipcode,
    placeofperformancecongressionaldistrict,
    pop_cd,
    psc_cat,
    left_text(productorservicecode),
    left_text(systemequipmentcode),
    right_text(systemequipmentcode),
    left_text(claimantprogramcode),
    left_text(principalnaicscode),
    left_text(informationtechnologycommercialitemcategory),
    left_text(gfe_gfp),
    left_text(useofepadesignatedproducts),
    left_text(recoveredmaterialclauses),
    left_text(seatransportation),
    left_text(contractbundling),
    left_text(consolidatedcontract),
    validate_country(countryoforigin),
    place_of_manufacture(placeofmanufacture),
    left_text(manufacturingorganizationtype),
    left_text(agencyid),
    right_text(agencyid),
    piid,
    modnumber,
    transactionnumber,
    fiscal_year,
    idvagencyid,
    idvpiid,
    idvmodificationnumber,
    solicitationid,
    left_text(extentcompeted),
    left_text(reasonnotcompeted),
    cast(numberofoffersreceived AS INTEGER),
    left_text(commercialitemacquisitionprocedures),
    left_text(commercialitemtestprogram),
    left_text(smallbusinesscompetitivenessdemonstrationprogram),
    a76action(a76action),
    competitiveprocedures,
    solicitation_procedures(solicitationprocedures),
    left_text(typeofsetaside),
    local_area_set_aside(localareasetaside),
    left_text(evaluatedpreference),
    fedbizopps,
    research,
    statutoryexceptiontofairopportunity,
    UPPER(organizationaltype),
    cast(numberofemployees AS BIGINT),
    cast(annualrevenue AS MONEY),
    firm8aflag,
    hubzoneflag,
    sdbflag,
    issbacertifiedsmalldisadvantagedbusiness,
    shelteredworkshopflag,
    hbcuflag,
    educationalinstitutionflag,
    womenownedflag,
    veteranownedflag,
    srdvobflag,
    localgovernmentflag,
    minorityinstitutionflag,
    aiobflag,
    stategovernmentflag,
    federalgovernmentflag,
    minorityownedbusinessflag,
    apaobflag,
    tribalgovernmentflag,
    baobflag,
    naobflag,
    saaobflag,
    nonprofitorganizationflag,
    isothernotforprofitorganization,
    isforprofitorganization,
    isfoundation,
    haobflag,
    ishispanicservicinginstitution,
    emergingsmallbusinessflag,
    hospitalflag,
    left_text(contractingofficerbusinesssizedetermination),
    is1862landgrantcollege,
    is1890landgrantcollege,
    is1994landgrantcollege,
    isveterinarycollege,
    isveterinaryhospital,
    isprivateuniversityorcollege,
    isschoolofforestry,
    isstatecontrolledinstitutionofhigherlearning,
    isserviceprovider,
    receivescontracts,
    receivesgrants,
    receivescontractsandgrants,
    isairportauthority,
    iscouncilofgovernments,
    ishousingauthoritiespublicortribal,
    isinterstateentity,
    isplanningcommission,
    isportauthority,
    istransitauthority,
    issubchapterscorporation,
    islimitedliabilitycorporation,
    isforeignownedandlocated,
    isarchitectureandengineering,
    is_dot_certified(isdotcertifieddisadvantagedbusinessenterprise),
    iscitylocalgovernment,
    iscommunitydevelopedcorporationownedfirm,
    iscommunitydevelopmentcorporation,
    isconstructionfirm,
    ismanufacturerofgoods,
    iscorporateentitynottaxexempt,
    iscountylocalgovernment,
    isdomesticshelter,
    isfederalgovernmentagency,
    isfederallyfundedresearchanddevelopmentcorp,
    isforeigngovernment,
    isindiantribe,
    isintermunicipallocalgovernment,
    isinternationalorganization,
    islaborsurplusareafirm,
    islocalgovernmentowned,
    ismunicipalitylocalgovernment,
    isnativehawaiianownedorganizationorfirm,
    isotherbusinessororganization,
    isotherminorityowned,
    ispartnershiporlimitedliabilitypartnership,
    isschooldistrictlocalgovernment,
    issmallagriculturalcooperative,
    issoleproprietorship,
    istownshiplocalgovernment,
    istriballyownedfirm,
    istribalcollege,
    isalaskannativeownedcorporationorfirm,
    iscorporateentitytaxexempt,
    iswomenownedsmallbusiness,
    isecondisadvwomenownedsmallbusiness,
    isjointventurewomenownedsmallbusiness,
    isjointventureecondisadvwomenownedsmallbusiness,
    left_text(walshhealyact),
    left_text(servicecontractact),
    left_text(davisbaconact),
    left_text(clingercohenact),
    left_text(otherstatutoryauthority),
    prime_awardee_executive1,
    CAST(prime_awardee_executive1_compensation AS MONEY),
    prime_awardee_executive2,
    CAST(prime_awardee_executive2_compensation AS MONEY),
    prime_awardee_executive3,
    CAST(prime_awardee_executive3_compensation AS MONEY),
    prime_awardee_executive4,
    CAST(prime_awardee_executive4_compensation AS MONEY),
    prime_awardee_executive5,
    CAST(prime_awardee_executive5_compensation AS MONEY),
    left_text(interagencycontractingauthority)
  FROM contract_csv;

INSERT INTO contract
(id,
 unique_transaction_id,
 last_modified_date,
 query_progress,
 transaction_status,
 dollars_obligated,
 base_and_exercised_options_value,
 base_and_all_options_value,
 contracting_department_id,
 contracting_department_name,
 contracting_agency_id,
 contracting_agency_name,
 contracting_agency_id_redundant,
 contracting_agency_name_redundant,
 contracting_office_id,
 contracting_office_name,
 funding_department_id,
 funding_department_name,
 funding_agency_id,
 funding_agency_name,
 funding_office_id,
 funding_office_name,
 funded_by_foreign_entity,
 signed_date,
 effective_date,
 current_completion_date,
 ultimate_completion_date,
 last_date_to_order,
 contract_action_type,
 reason_for_modification,
 type_of_contract_pricing,
 price_evaluation_percent_difference,
 subcontract_plan,
 letter_contract,
 multiyear_contract,
 performance_based_service_contract,
 major_program_code,
 contingency_humanitarian_peacekeeping_operation,
 contract_financing,
 cost_or_pricing_data,
 cost_accounting_standards_clause,
 descriptionofcontractrequirement,
 purchase_card_as_payment_method,
 number_of_actions,
 national_interest_action,
 prog_source_agency,
 prog_source_account,
 prog_source_subacct,
 account_title,
 recovery_flag,
 type_of_idc,
 multiple_or_single_award_idc,
 program_acronym,
 contractor_name,
 contractor_alternate_name,
 contractor_legal_organization_name,
 contractor_doing_as_business_name,
 contractor_division_name,
 contractor_division_number_or_office_code,
 contractor_enabled,
 contractor_location_disable_flag,
 contractor_ccr_exception,
 contractor_street_address_1,
 contractor_street_address_2,
 contractor_street_address_3,
 contractor_city,
 contractor_state,
 contractor_state_redundant,
 contractor_zip_code,
 contractor_country,
 contractor_congressional_district,
 contractor_congressional_district_redundant,
 contractor_site_code,
 contractor_alternate_site_code,
 contractor_duns_number,
 contractor_parent_duns_number,
 contractor_phone_number,
 contractor_fax_number,
 contractor_registration_date,
 contractor_renewal_date,
 contractor_parent_name,
 location_code,
 place_of_performance_city,
 place_of_performance_state,
 place_of_performance_state_redundant,
 place_of_performance_country,
 place_of_performance_zip_code,
 place_of_performance_congressional_district,
 place_of_performance_congressional_district_redundant,
 product_or_service_category,
 product_or_service_code,
 system_or_equipment_code,
 system_or_equipment_description,
 claimant_program,
 naics,
 information_technology_commercial_item_category,
 gfe_gfp,
 use_of_epa_designated_products,
 recovered_material_clauses,
 sea_transportation,
 contract_bundling,
 consolidated_contract,
 country_of_origin,
 place_of_manufacture,
 manufacturing_organization_type,
 agency_id,
 agency_name,
 piid,
 modification_number,
 transaction_number,
 fiscal_year,
 idv_agency_id,
 idv_piid,
 idv_modification_number,
 solicitation_id,
 extent_competed,
 reason_not_competed,
 number_of_offers_received,
 commercial_item_acquisition_procedures,
 commercial_item_test_program,
 small_business_competitiveness_demonstration_program,
 a76action,
 competitive_procedures,
 solicitation_procedures,
 type_of_set_aside,
 local_area_set_aside,
 evaluated_preference,
 fedbizopps,
 research,
 statutory_exception_to_fair_opportunity,
 contractor_organizational_type,
 contractor_number_of_employees,
 contractor_annual_revenue,
 firm8aflag,
 hubzoneflag,
 sdbflag,
 issbacertifiedsmalldisadvantagedbusiness,
 shelteredworkshopflag,
 hbcuflag,
 educationalinstitutionflag,
 womenownedflag,
 veteranownedflag,
 srdvobflag,
 localgovernmentflag,
 minorityinstitutionflag,
 aiobflag,
 stategovernmentflag,
 federalgovernmentflag,
 minorityownedbusinessflag,
 apaobflag,
 tribalgovernmentflag,
 baobflag,
 naobflag,
 saaobflag,
 nonprofitorganizationflag,
 isothernotforprofitorganization,
 isforprofitorganization,
 isfoundation,
 haobflag,
 ishispanicservicinginstitution,
 emergingsmallbusinessflag,
 hospitalflag,
 contractingofficerbusinesssizedetermination,
 is1862landgrantcollege,
 is1890landgrantcollege,
 is1994landgrantcollege,
 isveterinarycollege,
 isveterinaryhospital,
 isprivateuniversityorcollege,
 isschoolofforestry,
 isstatecontrolledinstitutionofhigherlearning,
 isserviceprovider,
 receivescontracts,
 receivesgrants,
 receivescontractsandgrants,
 isairportauthority,
 iscouncilofgovernments,
 ishousingauthoritiespublicortribal,
 isinterstateentity,
 isplanningcommission,
 isportauthority,
 istransitauthority,
 issubchapterscorporation,
 islimitedliabilitycorporation,
 isforeignownedandlocated,
 isarchitectureandengineering,
 isdotcertifieddisadvantagedbusinessenterprise,
 iscitylocalgovernment,
 iscommunitydevelopedcorporationownedfirm,
 iscommunitydevelopmentcorporation,
 isconstructionfirm,
 ismanufacturerofgoods,
 iscorporateentitynottaxexempt,
 iscountylocalgovernment,
 isdomesticshelter,
 isfederalgovernmentagency,
 isfederallyfundedresearchanddevelopmentcorp,
 isforeigngovernment,
 isindiantribe,
 isintermunicipallocalgovernment,
 isinternationalorganization,
 islaborsurplusareafirm,
 islocalgovernmentowned,
 ismunicipalitylocalgovernment,
 isnativehawaiianownedorganizationorfirm,
 isotherbusinessororganization,
 isotherminorityowned,
 ispartnershiporlimitedliabilitypartnership,
 isschooldistrictlocalgovernment,
 issmallagriculturalcooperative,
 issoleproprietorship,
 istownshiplocalgovernment,
 istriballyownedfirm,
 istribalcollege,
 isalaskannativeownedcorporationorfirm,
 iscorporateentitytaxexempt,
 iswomenownedsmallbusiness,
 isecondisadvwomenownedsmallbusiness,
 isjointventurewomenownedsmallbusiness,
 isjointventureecondisadvwomenownedsmallbusiness,
 walsh_healy_act,
 service_contract_act,
 davis_bacon_act,
 clinger_cohen_act,
 other_statutory_authority,
 prime_awardee_executive1,
 prime_awardee_executive1_compensation,
 prime_awardee_executive2,
 prime_awardee_executive2_compensation,
 prime_awardee_executive3,
 prime_awardee_executive3_compensation,
 prime_awardee_executive4,
 prime_awardee_executive4_compensation,
 prime_awardee_executive5,
 prime_awardee_executive5_compensation,
 interagency_contracting_authority)
  SELECT distinct on (unique_transaction_id)
    id,
 unique_transaction_id,
 last_modified_date,
 nextval('query_progress'),
 transaction_status,
 dollars_obligated,
 base_and_exercised_options_value,
 base_and_all_options_value,
 contracting_department_id,
 contracting_department_name,
 contracting_agency_id,
 contracting_agency_name,
 contracting_agency_id_redundant,
 contracting_agency_name_redundant,
 contracting_office_id,
 contracting_office_name,
 funding_department_id,
 funding_department_name,
 funding_agency_id,
 funding_agency_name,
 funding_office_id,
 funding_office_name,
 funded_by_foreign_entity,
 signed_date,
 effective_date,
 current_completion_date,
 ultimate_completion_date,
 last_date_to_order,
 contract_action_type,
 reason_for_modification,
 type_of_contract_pricing,
 price_evaluation_percent_difference,
 subcontract_plan,
 letter_contract,
 multiyear_contract,
 performance_based_service_contract,
 major_program_code,
 contingency_humanitarian_peacekeeping_operation,
 contract_financing,
 cost_or_pricing_data,
 cost_accounting_standards_clause,
 descriptionofcontractrequirement,
 purchase_card_as_payment_method,
 number_of_actions,
 national_interest_action,
 prog_source_agency,
 prog_source_account,
 prog_source_subacct,
 account_title,
 recovery_flag,
 type_of_idc,
 multiple_or_single_award_idc,
 program_acronym,
 contractor_name,
 contractor_alternate_name,
 contractor_legal_organization_name,
 contractor_doing_as_business_name,
 contractor_division_name,
 contractor_division_number_or_office_code,
 contractor_enabled,
 contractor_location_disable_flag,
 contractor_ccr_exception,
 contractor_street_address_1,
 contractor_street_address_2,
 contractor_street_address_3,
 contractor_city,
 contractor_state,
 contractor_state_redundant,
 contractor_zip_code,
 contractor_country,
 contractor_congressional_district,
 contractor_congressional_district_redundant,
 contractor_site_code,
 contractor_alternate_site_code,
 contractor_duns_number,
 contractor_parent_duns_number,
 contractor_phone_number,
 contractor_fax_number,
 contractor_registration_date,
 contractor_renewal_date,
 contractor_parent_name,
 location_code,
 place_of_performance_city,
 place_of_performance_state,
 place_of_performance_state_redundant,
 place_of_performance_country,
 place_of_performance_zip_code,
 place_of_performance_congressional_district,
 place_of_performance_congressional_district_redundant,
 product_or_service_category,
 product_or_service_code,
 system_or_equipment_code,
 system_or_equipment_description,
 claimant_program,
 naics,
 information_technology_commercial_item_category,
 gfe_gfp,
 use_of_epa_designated_products,
 recovered_material_clauses,
 sea_transportation,
 contract_bundling,
 consolidated_contract,
 country_of_origin,
 place_of_manufacture,
 manufacturing_organization_type,
 agency_id,
 agency_name,
 piid,
 modification_number,
 transaction_number,
 fiscal_year,
 idv_agency_id,
 idv_piid,
 idv_modification_number,
 solicitation_id,
 extent_competed,
 reason_not_competed,
 number_of_offers_received,
 commercial_item_acquisition_procedures,
 commercial_item_test_program,
 small_business_competitiveness_demonstration_program,
 a76action,
 competitive_procedures,
 solicitation_procedures,
 type_of_set_aside,
 local_area_set_aside,
 evaluated_preference,
 fedbizopps,
 research,
 statutory_exception_to_fair_opportunity,
 contractor_organizational_type,
 contractor_number_of_employees,
 contractor_annual_revenue,
 firm8aflag,
 hubzoneflag,
 sdbflag,
 issbacertifiedsmalldisadvantagedbusiness,
 shelteredworkshopflag,
 hbcuflag,
 educationalinstitutionflag,
 womenownedflag,
 veteranownedflag,
 srdvobflag,
 localgovernmentflag,
 minorityinstitutionflag,
 aiobflag,
 stategovernmentflag,
 federalgovernmentflag,
 minorityownedbusinessflag,
 apaobflag,
 tribalgovernmentflag,
 baobflag,
 naobflag,
 saaobflag,
 nonprofitorganizationflag,
 isothernotforprofitorganization,
 isforprofitorganization,
 isfoundation,
 haobflag,
 ishispanicservicinginstitution,
 emergingsmallbusinessflag,
 hospitalflag,
 contractingofficerbusinesssizedetermination,
 is1862landgrantcollege,
 is1890landgrantcollege,
 is1994landgrantcollege,
 isveterinarycollege,
 isveterinaryhospital,
 isprivateuniversityorcollege,
 isschoolofforestry,
 isstatecontrolledinstitutionofhigherlearning,
 isserviceprovider,
 receivescontracts,
 receivesgrants,
 receivescontractsandgrants,
 isairportauthority,
 iscouncilofgovernments,
 ishousingauthoritiespublicortribal,
 isinterstateentity,
 isplanningcommission,
 isportauthority,
 istransitauthority,
 issubchapterscorporation,
 islimitedliabilitycorporation,
 isforeignownedandlocated,
 isarchitectureandengineering,
 isdotcertifieddisadvantagedbusinessenterprise,
 iscitylocalgovernment,
 iscommunitydevelopedcorporationownedfirm,
 iscommunitydevelopmentcorporation,
 isconstructionfirm,
 ismanufacturerofgoods,
 iscorporateentitynottaxexempt,
 iscountylocalgovernment,
 isdomesticshelter,
 isfederalgovernmentagency,
 isfederallyfundedresearchanddevelopmentcorp,
 isforeigngovernment,
 isindiantribe,
 isintermunicipallocalgovernment,
 isinternationalorganization,
 islaborsurplusareafirm,
 islocalgovernmentowned,
 ismunicipalitylocalgovernment,
 isnativehawaiianownedorganizationorfirm,
 isotherbusinessororganization,
 isotherminorityowned,
 ispartnershiporlimitedliabilitypartnership,
 isschooldistrictlocalgovernment,
 issmallagriculturalcooperative,
 issoleproprietorship,
 istownshiplocalgovernment,
 istriballyownedfirm,
 istribalcollege,
 isalaskannativeownedcorporationorfirm,
 iscorporateentitytaxexempt,
 iswomenownedsmallbusiness,
 isecondisadvwomenownedsmallbusiness,
 isjointventurewomenownedsmallbusiness,
 isjointventureecondisadvwomenownedsmallbusiness,
 walsh_healy_act,
 service_contract_act,
 davis_bacon_act,
 clinger_cohen_act,
 other_statutory_authority,
 prime_awardee_executive1,
 prime_awardee_executive1_compensation,
 prime_awardee_executive2,
 prime_awardee_executive2_compensation,
 prime_awardee_executive3,
 prime_awardee_executive3_compensation,
 prime_awardee_executive4,
 prime_awardee_executive4_compensation,
 prime_awardee_executive5,
 prime_awardee_executive5_compensation,
 interagency_contracting_authority
  FROM contract_all
order by unique_transaction_id, last_modified_date DESC;

\copy contract (unique_transaction_id, last_modified_date, transaction_status, dollars_obligated, base_and_exercised_options_value, base_and_all_options_value, contracting_department_id, contracting_department_name, contracting_agency_id, contracting_agency_name, contracting_agency_id_redundant, contracting_agency_name_redundant, contracting_office_id, contracting_office_name, funding_department_id, funding_department_name, funding_agency_id, funding_agency_name, funding_office_id, funding_office_name, funded_by_foreign_entity, signed_date, effective_date, current_completion_date, ultimate_completion_date, last_date_to_order, contract_action_type, reason_for_modification, type_of_contract_pricing, price_evaluation_percent_difference, subcontract_plan, letter_contract, multiyear_contract, performance_based_service_contract, major_program_code, contingency_humanitarian_peacekeeping_operation, contract_financing, cost_or_pricing_data, cost_accounting_standards_clause, descriptionofcontractrequirement, purchase_card_as_payment_method, number_of_actions, national_interest_action, prog_source_agency, prog_source_account, prog_source_subacct, account_title, recovery_flag, type_of_idc, multiple_or_single_award_idc, program_acronym, contractor_name, contractor_alternate_name, contractor_legal_organization_name, contractor_doing_as_business_name, contractor_division_name, contractor_division_number_or_office_code, contractor_enabled, contractor_location_disable_flag, contractor_ccr_exception, contractor_street_address_1, contractor_street_address_2, contractor_street_address_3, contractor_city, contractor_state, contractor_state_redundant, contractor_zip_code, contractor_country, contractor_congressional_district, contractor_congressional_district_redundant, contractor_site_code, contractor_alternate_site_code, contractor_duns_number, contractor_parent_duns_number, contractor_phone_number, contractor_fax_number, contractor_registration_date, contractor_renewal_date, contractor_parent_name, location_code, place_of_performance_city, place_of_performance_state, place_of_performance_state_redundant, place_of_performance_country, place_of_performance_zip_code, place_of_performance_congressional_district, place_of_performance_congressional_district_redundant, product_or_service_category, product_or_service_code, system_or_equipment_code, system_or_equipment_description, claimant_program, naics, information_technology_commercial_item_category, gfe_gfp, use_of_epa_designated_products, recovered_material_clauses, sea_transportation, contract_bundling, consolidated_contract, country_of_origin, place_of_manufacture, manufacturing_organization_type, agency_id, agency_name, piid, modification_number, transaction_number, fiscal_year, idv_agency_id, idv_piid, idv_modification_number, solicitation_id, extent_competed, reason_not_competed, number_of_offers_received, commercial_item_acquisition_procedures, commercial_item_test_program, small_business_competitiveness_demonstration_program, a76action, competitive_procedures, solicitation_procedures, type_of_set_aside, local_area_set_aside, evaluated_preference, fedbizopps, research, statutory_exception_to_fair_opportunity, contractor_organizational_type, contractor_number_of_employees, contractor_annual_revenue, firm8aflag, hubzoneflag, sdbflag, issbacertifiedsmalldisadvantagedbusiness, shelteredworkshopflag, hbcuflag, educationalinstitutionflag, womenownedflag, veteranownedflag, srdvobflag, localgovernmentflag, minorityinstitutionflag, aiobflag, stategovernmentflag, federalgovernmentflag, minorityownedbusinessflag, apaobflag, tribalgovernmentflag, baobflag, naobflag, saaobflag, nonprofitorganizationflag, isothernotforprofitorganization, isforprofitorganization, isfoundation, haobflag, ishispanicservicinginstitution, emergingsmallbusinessflag, hospitalflag, contractingofficerbusinesssizedetermination, is1862landgrantcollege, is1890landgrantcollege, is1994landgrantcollege, isveterinarycollege, isveterinaryhospital, isprivateuniversityorcollege, isschoolofforestry, isstatecontrolledinstitutionofhigherlearning, isserviceprovider, receivescontracts, receivesgrants, receivescontractsandgrants, isairportauthority, iscouncilofgovernments, ishousingauthoritiespublicortribal, isinterstateentity, isplanningcommission, isportauthority, istransitauthority, issubchapterscorporation, islimitedliabilitycorporation, isforeignownedandlocated, isarchitectureandengineering, isdotcertifieddisadvantagedbusinessenterprise, iscitylocalgovernment, iscommunitydevelopedcorporationownedfirm, iscommunitydevelopmentcorporation, isconstructionfirm, ismanufacturerofgoods, iscorporateentitynottaxexempt, iscountylocalgovernment, isdomesticshelter, isfederalgovernmentagency, isfederallyfundedresearchanddevelopmentcorp, isforeigngovernment, isindiantribe, isintermunicipallocalgovernment, isinternationalorganization, islaborsurplusareafirm, islocalgovernmentowned, ismunicipalitylocalgovernment, isnativehawaiianownedorganizationorfirm, isotherbusinessororganization, isotherminorityowned, ispartnershiporlimitedliabilitypartnership, isschooldistrictlocalgovernment, issmallagriculturalcooperative, issoleproprietorship, istownshiplocalgovernment, istriballyownedfirm, istribalcollege, isalaskannativeownedcorporationorfirm, iscorporateentitytaxexempt, iswomenownedsmallbusiness, isecondisadvwomenownedsmallbusiness, isjointventurewomenownedsmallbusiness, isjointventureecondisadvwomenownedsmallbusiness, walsh_healy_act, service_contract_act, davis_bacon_act, clinger_cohen_act, other_statutory_authority, prime_awardee_executive1, prime_awardee_executive1_compensation, prime_awardee_executive2, prime_awardee_executive2_compensation, prime_awardee_executive3, prime_awardee_executive3_compensation, prime_awardee_executive4, prime_awardee_executive4_compensation, prime_awardee_executive5, prime_awardee_executive5_compensation, interagency_contracting_authority) FROM '$1' CSV HEADER;

drop table if exists contract;

CREATE TABLE IF NOT EXISTS contract (
  id SERIAL CONSTRAINT pk_contract PRIMARY KEY,
  unique_transaction_id VARCHAR(32) NOT NULL,
  last_modified_date DATE NOT NULL,
  CONSTRAINT u_contract unique (unique_transaction_id, last_modified_date),
  transaction_status VARCHAR(6),
  CONSTRAINT fk2_transaction_status FOREIGN KEY (transaction_status) REFERENCES transaction_status(status),
  dollars_obligated MONEY,
  base_and_exercised_options_value MONEY,
  base_and_all_options_value MONEY,
  --
  -- contracting department, agency, office:
  contracting_department_id VARCHAR(4),
  contracting_department_name TEXT,
  contracting_agency_id VARCHAR(4),
  contracting_agency_name TEXT,
  contracting_agency_id_redundant VARCHAR(4),
  contracting_agency_name_redundant TEXT,
  contracting_office_id VARCHAR(6),
  contracting_office_name TEXT,
  -- funding department, agency, office
  funding_department_id VARCHAR(4),
  funding_department_name TEXT,
  funding_agency_id VARCHAR(4),
  funding_agency_name TEXT,
  funding_office_id VARCHAR(6),
  funding_office_name TEXT,
  --
  --
  funded_by_foreign_entity CHAR,
  CONSTRAINT fk2_funded_by_foreign_entity FOREIGN KEY (funded_by_foreign_entity) REFERENCES funded_by_foreign_entity(code),
  signed_date DATE,
  effective_date DATE,
  current_completion_date DATE,
  ultimate_completion_date DATE,
  last_date_to_order DATE,
  contract_action_type VARCHAR(8),
  CONSTRAINT fk2_contract_action_type FOREIGN KEY (contract_action_type) REFERENCES contract_action_type (code),
  reason_for_modification CHAR,
  CONSTRAINT fk2_reason_for_modification FOREIGN KEY (reason_for_modification) REFERENCES reason_for_modification (code),
  type_of_contract_pricing VARCHAR(2),
  CONSTRAINT fk2_type_of_contract_pricing FOREIGN KEY (type_of_contract_pricing) REFERENCES type_of_contract_pricing (code),
  price_evaluation_percent_difference REAL,
  subcontract_plan CHAR,
  CONSTRAINT fk2_subcontract_plan FOREIGN KEY (subcontract_plan) REFERENCES subcontract_plan (code),
  letter_contract CHAR,
  CONSTRAINT fk2_letter_contract FOREIGN KEY (letter_contract) REFERENCES letter_contract (code),
  multiyear_contract CHAR,
  CONSTRAINT fk2_multiyear_contract FOREIGN KEY (multiyear_contract) REFERENCES multiyear_contract (code),
  performance_based_service_contract CHAR,
  CONSTRAINT fk2_performance_based_service_contract FOREIGN KEY (performance_based_service_contract) REFERENCES performance_based_service_contract (code),
  major_program_code TEXT,
  contingency_humanitarian_peacekeeping_operation CHAR,
  CONSTRAINT fk2_contingency_humanitarian_peacekeeping_operation FOREIGN KEY (contingency_humanitarian_peacekeeping_operation) REFERENCES contingency_humanitarian_peacekeeping_operation (code),
  contract_financing CHAR,
  CONSTRAINT fk2_contract_financing FOREIGN KEY (contract_financing) REFERENCES contract_financing (code),
  cost_or_pricing_data CHAR,
  CONSTRAINT fk2_cost_or_pricing_data FOREIGN KEY (cost_or_pricing_data) REFERENCES cost_or_pricing_data(code),
  cost_accounting_standards_clause CHAR,
  CONSTRAINT fk2_cost_accounting_standards_clause FOREIGN KEY (cost_accounting_standards_clause) REFERENCES cost_accounting_standards_clause(code),
  descriptionofcontractrequirement TEXT,
  purchase_card_as_payment_method CHAR,
  CONSTRAINT fk2_purchase_card_as_payment_method FOREIGN KEY (purchase_card_as_payment_method) REFERENCES purchase_card_as_payment_method(code),
  number_of_actions INTEGER,
  national_interest_action VARCHAR(4),
  CONSTRAINT fk2_national_interest_action FOREIGN KEY (national_interest_action) REFERENCES national_interest_action(code),
  prog_source_agency VARCHAR(2),
  prog_source_account VARCHAR(4),
  prog_source_subacct VARCHAR(3),
  account_title TEXT,
  recovery_flag VARCHAR(4),
  CONSTRAINT fk2_recovery_flag FOREIGN KEY (recovery_flag) REFERENCES recovery_flag(code),
  type_of_idc CHAR,
  CONSTRAINT fk2_type_of_idc FOREIGN KEY (type_of_idc) REFERENCES type_of_idc(code),
  multiple_or_single_award_idc CHAR,
  CONSTRAINT fk2_multiple_or_single_award_idc FOREIGN KEY (multiple_or_single_award_idc) REFERENCES multiple_or_single_award_idc(code),
  program_acronym TEXT,
  --
  -- vendor:
  --
  contractor_name TEXT,
  contractor_alternate_name TEXT,
  contractor_legal_organization_name TEXT,
  contractor_doing_as_business_name TEXT,
  contractor_division_name TEXT,
  contractor_division_number_or_office_code TEXT,
  contractor_enabled TEXT,
  contractor_location_disable_flag TEXT,
  contractor_ccr_exception CHAR,
  CONSTRAINT fk2_contractor_ccr_exception FOREIGN KEY (contractor_ccr_exception) REFERENCES ccr_exception(code),
  contractor_street_address_1 TEXT,
  contractor_street_address_2 TEXT,
  contractor_street_address_3 TEXT,
  contractor_city TEXT,
  contractor_state TEXT,
  contractor_state_redundant TEXT,
  contractor_zip_code TEXT,
  contractor_country VARCHAR(3),
  CONSTRAINT fk2_country FOREIGN KEY (contractor_country) REFERENCES country(code),
  contractor_congressional_district VARCHAR(4),
  contractor_congressional_district_redundant VARCHAR(4),
  contractor_site_code TEXT,
  contractor_alternate_site_code TEXT,
  contractor_duns_number VARCHAR(9),
  contractor_parent_duns_number VARCHAR(9),
  contractor_phone_number TEXT,
  contractor_fax_number TEXT,
  contractor_registration_date DATE,
  contractor_renewal_date DATE,
  contractor_parent_name TEXT,
  --
  --
  --
  location_code TEXT,
  place_of_performance_city TEXT,
  place_of_performance_state VARCHAR(2),
  CONSTRAINT fk2_place_of_performance_state FOREIGN KEY (place_of_performance_state) REFERENCES state(code),
  place_of_performance_state_redundant VARCHAR(2),
  CONSTRAINT fk2_place_of_performance_state_redundant FOREIGN KEY (place_of_performance_state_redundant) REFERENCES state(code),
  place_of_performance_country VARCHAR(3),
  CONSTRAINT fk2_place_of_performance_country FOREIGN KEY (place_of_performance_country) REFERENCES country(code),
  place_of_performance_zip_code TEXT,
  place_of_performance_congressional_district VARCHAR(4),
  place_of_performance_congressional_district_redundant VARCHAR(4),
  product_or_service_category VARCHAR(2),
  CONSTRAINT fk2_product_or_service_category FOREIGN KEY (product_or_service_category) REFERENCES product_or_service_category(code),
  product_or_service_code VARCHAR(4),
  CONSTRAINT fk2_product_or_service_code FOREIGN KEY (product_or_service_code) REFERENCES product_or_service_code(code),
  --
  --
  --
  system_or_equipment_code VARCHAR(4),
  system_or_equipment_description TEXT,
  --
  --
  --
  claimant_program VARCHAR(3),
  CONSTRAINT fk2_claimant_program FOREIGN KEY (claimant_program) REFERENCES claimant_program(code),
  naics VARCHAR(6),
  CONSTRAINT fk2_naics FOREIGN KEY (naics) REFERENCES naics(code),
  information_technology_commercial_item_category CHAR,
  CONSTRAINT fk2_information_technology_commercial_item_category FOREIGN KEY (information_technology_commercial_item_category) REFERENCES information_technology_commercial_item_category(code),
  gfe_gfp CHAR,
  CONSTRAINT fk2_gfe_gfp FOREIGN KEY (gfe_gfp) REFERENCES gfe_gfp(code),
  use_of_epa_designated_products CHAR,
  CONSTRAINT fk2_use_of_epa_designated_products FOREIGN KEY (use_of_epa_designated_products) REFERENCES use_of_epa_designated_products(code),
  recovered_material_clauses CHAR,
  CONSTRAINT fk2_recovered_material_clauses FOREIGN KEY (recovered_material_clauses) REFERENCES recovered_material_clauses(code),
  sea_transportation CHAR,
  CONSTRAINT fk2_sea_transportation FOREIGN KEY (sea_transportation) REFERENCES sea_transportation(code),
  contract_bundling CHAR,
  CONSTRAINT fk2_contract_bundling FOREIGN KEY (contract_bundling) REFERENCES contract_bundling(code),
  consolidated_contract CHAR,
  CONSTRAINT fk2_consolidated_contract FOREIGN KEY (consolidated_contract) REFERENCES consolidated_contract(code),
  country_of_origin VARCHAR(3),
  CONSTRAINT fk2_country_of_origin FOREIGN KEY (country_of_origin) REFERENCES country(code),
  place_of_manufacture CHAR,
  CONSTRAINT fk2_place_of_manufacture FOREIGN KEY (place_of_manufacture) REFERENCES place_of_manufacture(code),
  manufacturing_organization_type CHAR,
  CONSTRAINT fk2_manufacturing_organization_type FOREIGN KEY (manufacturing_organization_type) REFERENCES manufacturing_organization_type(code),
  agency_id VARCHAR(4),
  agency_name TEXT,
  piid TEXT,
  modification_number TEXT,
  transaction_number TEXT,
  fiscal_year VARCHAR(4),
  idv_agency_id VARCHAR(4),
  idv_piid TEXT,
  idv_modification_number TEXT,
  solicitation_id TEXT,
  extent_competed VARCHAR(3),
  CONSTRAINT fk2_extent_competed FOREIGN KEY (extent_competed) REFERENCES extent_competed(code),
  reason_not_competed VARCHAR(3),
  CONSTRAINT fk2_reason_not_competed FOREIGN KEY (reason_not_competed) REFERENCES reason_not_competed(code),
  number_of_offers_received INTEGER,
  commercial_item_acquisition_procedures CHAR,
  CONSTRAINT fk2_commercial_item_acquisition_procedures FOREIGN KEY (commercial_item_acquisition_procedures) REFERENCES commercial_item_acquisition_procedures(code),
  commercial_item_test_program CHAR,
  CONSTRAINT fk2_commercial_item_test_program FOREIGN KEY (commercial_item_test_program) REFERENCES commercial_item_test_program(code),
  small_business_competitiveness_demonstration_program CHAR,
  CONSTRAINT fk2_small_business_competitiveness_demonstration_program FOREIGN KEY (small_business_competitiveness_demonstration_program) REFERENCES small_business_competitiveness_demonstration_program(code),
  a76action CHAR,
  CONSTRAINT fk2_a76action FOREIGN KEY (a76action) REFERENCES a76action(code),
  competitive_procedures TEXT,
  solicitation_procedures VARCHAR(4),
  CONSTRAINT fk2_solicitation_procedures FOREIGN KEY (solicitation_procedures) REFERENCES solicitation_procedures(code),
  type_of_set_aside VARCHAR(8),
  CONSTRAINT fk2_type_of_set_aside FOREIGN KEY (type_of_set_aside) REFERENCES type_of_set_aside(code),
  local_area_set_aside CHAR,
  CONSTRAINT fk2_local_area_set_aside FOREIGN KEY (local_area_set_aside) REFERENCES local_area_set_aside(code),
  evaluated_preference VARCHAR(4),
  CONSTRAINT fk2_evaluated_preference FOREIGN KEY (evaluated_preference) REFERENCES evaluated_preference(code),
  fedbizopps CHAR,
  CONSTRAINT fk2_fedbizopps FOREIGN KEY (fedbizopps) REFERENCES fedbizopps(code),
  research VARCHAR(3),
  CONSTRAINT fk2_research FOREIGN KEY (research) REFERENCES research(code),
  statutory_exception_to_fair_opportunity VARCHAR(4),
  CONSTRAINT fk2_statutory_exception_to_fair_opportunity FOREIGN KEY (statutory_exception_to_fair_opportunity) REFERENCES statutory_exception_to_fair_opportunity(code),
  contractor_organizational_type TEXT,
  contractor_number_of_employees BIGINT,
  contractor_annual_revenue MONEY,
  firm8aflag CHAR,
  CONSTRAINT fk2_firm8aflag FOREIGN KEY (firm8aflag) REFERENCES flag_value(code),
  hubzoneflag CHAR,
  CONSTRAINT fk2_hubzoneflag FOREIGN KEY (hubzoneflag) REFERENCES flag_value(code),
  sdbflag CHAR,
  CONSTRAINT fk2_sdbflag FOREIGN KEY (sdbflag) REFERENCES flag_value(code),
  issbacertifiedsmalldisadvantagedbusiness CHAR,
  CONSTRAINT fk2_issbacertifiedsmalldisadvantagedbusiness FOREIGN KEY (issbacertifiedsmalldisadvantagedbusiness) REFERENCES flag_value(code),
  shelteredworkshopflag CHAR,
  CONSTRAINT fk2_shelteredworkshopflag FOREIGN KEY (shelteredworkshopflag) REFERENCES flag_value(code),
  hbcuflag CHAR,
  CONSTRAINT fk2_hbcuflag FOREIGN KEY (hbcuflag) REFERENCES flag_value(code),
  educationalinstitutionflag CHAR,
  CONSTRAINT fk2_educationalinstitutionflag FOREIGN KEY (educationalinstitutionflag) REFERENCES flag_value(code),
  womenownedflag CHAR,
  CONSTRAINT fk2_womenownedflag FOREIGN KEY (womenownedflag) REFERENCES flag_value(code),
  veteranownedflag CHAR,
  CONSTRAINT fk2_veteranownedflag FOREIGN KEY (veteranownedflag) REFERENCES flag_value(code),
  srdvobflag CHAR,
  CONSTRAINT fk2_srdvobflag FOREIGN KEY (srdvobflag) REFERENCES flag_value(code),
  localgovernmentflag CHAR,
  CONSTRAINT fk2_localgovernmentflag FOREIGN KEY (localgovernmentflag) REFERENCES flag_value(code),
  minorityinstitutionflag CHAR,
  CONSTRAINT fk2_minorityinstitutionflag FOREIGN KEY (minorityinstitutionflag) REFERENCES flag_value(code),
  aiobflag CHAR,
  CONSTRAINT fk2_aiobflag FOREIGN KEY (aiobflag) REFERENCES flag_value(code),
  stategovernmentflag CHAR,
  CONSTRAINT fk2_stategovernmentflag FOREIGN KEY (stategovernmentflag) REFERENCES flag_value(code),
  federalgovernmentflag CHAR,
  CONSTRAINT fk2_federalgovernmentflag FOREIGN KEY (federalgovernmentflag) REFERENCES flag_value(code),
  minorityownedbusinessflag CHAR,
  CONSTRAINT fk2_minorityownedbusinessflag FOREIGN KEY (minorityownedbusinessflag) REFERENCES flag_value(code),
  apaobflag CHAR,
  CONSTRAINT fk2_apaobflag FOREIGN KEY (apaobflag) REFERENCES flag_value(code),
  tribalgovernmentflag CHAR,
  CONSTRAINT fk2_tribalgovernmentflag FOREIGN KEY (tribalgovernmentflag) REFERENCES flag_value(code),
  baobflag CHAR,
  CONSTRAINT fk2_baobflag FOREIGN KEY (baobflag) REFERENCES flag_value(code),
  naobflag CHAR,
  CONSTRAINT fk2_naobflag FOREIGN KEY (naobflag) REFERENCES flag_value(code),
  saaobflag CHAR,
  CONSTRAINT fk2_saaobflag FOREIGN KEY (saaobflag) REFERENCES flag_value(code),
  nonprofitorganizationflag CHAR,
  CONSTRAINT fk2_nonprofitorganizationflag FOREIGN KEY (nonprofitorganizationflag) REFERENCES flag_value(code),
  isothernotforprofitorganization CHAR,
  CONSTRAINT fk2_isothernotforprofitorganization FOREIGN KEY (isothernotforprofitorganization) REFERENCES flag_value(code),
  isforprofitorganization CHAR,
  CONSTRAINT fk2_isforprofitorganization FOREIGN KEY (isforprofitorganization) REFERENCES flag_value(code),
  isfoundation CHAR,
  CONSTRAINT fk2_isfoundation FOREIGN KEY (isfoundation) REFERENCES flag_value(code),
  haobflag CHAR,
  CONSTRAINT fk2_haobflag FOREIGN KEY (haobflag) REFERENCES flag_value(code),
  ishispanicservicinginstitution CHAR,
  CONSTRAINT fk2_ishispanicservicinginstitution FOREIGN KEY (ishispanicservicinginstitution) REFERENCES flag_value(code),
  emergingsmallbusinessflag CHAR,
  CONSTRAINT fk2_emergingsmallbusinessflag FOREIGN KEY (emergingsmallbusinessflag) REFERENCES flag_value(code),
  hospitalflag CHAR,
  CONSTRAINT fk2_hospitalflag FOREIGN KEY (hospitalflag) REFERENCES flag_value(code),
  contractingofficerbusinesssizedetermination CHAR,
  CONSTRAINT fk2_contractingofficerbusinesssizedetermination FOREIGN KEY (contractingofficerbusinesssizedetermination) REFERENCES business_size(code),
  is1862landgrantcollege CHAR,
  CONSTRAINT fk2_is1862landgrantcollege FOREIGN KEY (is1862landgrantcollege) REFERENCES flag_value(code),
  is1890landgrantcollege CHAR,
  CONSTRAINT fk2_is1890landgrantcollege FOREIGN KEY (is1890landgrantcollege) REFERENCES flag_value(code),
  is1994landgrantcollege CHAR,
  CONSTRAINT fk2_is1994landgrantcollege FOREIGN KEY (is1994landgrantcollege) REFERENCES flag_value(code),
  isveterinarycollege CHAR,
  CONSTRAINT fk2_isveterinarycollege FOREIGN KEY (isveterinarycollege) REFERENCES flag_value(code),
  isveterinaryhospital CHAR,
  CONSTRAINT fk2_isveterinaryhospital FOREIGN KEY (isveterinaryhospital) REFERENCES flag_value(code),
  isprivateuniversityorcollege CHAR,
  CONSTRAINT fk2_isprivateuniversityorcollege FOREIGN KEY (isprivateuniversityorcollege) REFERENCES flag_value(code),
  isschoolofforestry CHAR,
  CONSTRAINT fk2_isschoolofforestry FOREIGN KEY (isschoolofforestry) REFERENCES flag_value(code),
  isstatecontrolledinstitutionofhigherlearning CHAR,
  CONSTRAINT fk2_isstatecontrolledinstitutionofhigherlearning FOREIGN KEY (isstatecontrolledinstitutionofhigherlearning) REFERENCES flag_value(code),
  isserviceprovider CHAR,
  CONSTRAINT fk2_isserviceprovider FOREIGN KEY (isserviceprovider) REFERENCES flag_value(code),
  receivescontracts CHAR,
  CONSTRAINT fk2_receivescontracts FOREIGN KEY (receivescontracts) REFERENCES flag_value(code),
  receivesgrants CHAR,
  CONSTRAINT fk2_receivesgrants FOREIGN KEY (receivesgrants) REFERENCES flag_value(code),
  receivescontractsandgrants CHAR,
  CONSTRAINT fk2_receivescontractsandgrants FOREIGN KEY (receivescontractsandgrants) REFERENCES flag_value(code),
  isairportauthority CHAR,
  CONSTRAINT fk2_isairportauthority FOREIGN KEY (isairportauthority) REFERENCES flag_value(code),
  iscouncilofgovernments CHAR,
  CONSTRAINT fk2_iscouncilofgovernments FOREIGN KEY (iscouncilofgovernments) REFERENCES flag_value(code),
  ishousingauthoritiespublicortribal CHAR,
  CONSTRAINT fk2_ishousingauthoritiespublicortribal FOREIGN KEY (ishousingauthoritiespublicortribal) REFERENCES flag_value(code),
  isinterstateentity CHAR,
  CONSTRAINT fk2_isinterstateentity FOREIGN KEY (isinterstateentity) REFERENCES flag_value(code),
  isplanningcommission CHAR,
  CONSTRAINT fk2_isplanningcommission FOREIGN KEY (isplanningcommission) REFERENCES flag_value(code),
  isportauthority CHAR,
  CONSTRAINT fk2_isportauthority FOREIGN KEY (isportauthority) REFERENCES flag_value(code),
  istransitauthority CHAR,
  CONSTRAINT fk2_istransitauthority FOREIGN KEY (istransitauthority) REFERENCES flag_value(code),
  issubchapterscorporation CHAR,
  CONSTRAINT fk2_issubchapterscorporation FOREIGN KEY (issubchapterscorporation) REFERENCES flag_value(code),
  islimitedliabilitycorporation CHAR,
  CONSTRAINT fk2_islimitedliabilitycorporation FOREIGN KEY (islimitedliabilitycorporation) REFERENCES flag_value(code),
  isforeignownedandlocated CHAR,
  CONSTRAINT fk2_isforeignownedandlocated FOREIGN KEY (isforeignownedandlocated) REFERENCES flag_value(code),
  isarchitectureandengineering CHAR,
  CONSTRAINT fk2_isarchitectureandengineering FOREIGN KEY (isarchitectureandengineering) REFERENCES flag_value(code),
  isdotcertifieddisadvantagedbusinessenterprise CHAR,
  CONSTRAINT fk2_isdotcertifieddisadvantagedbusinessenterprise FOREIGN KEY (isdotcertifieddisadvantagedbusinessenterprise) REFERENCES flag_value(code),
  iscitylocalgovernment CHAR,
  CONSTRAINT fk2_iscitylocalgovernment FOREIGN KEY (iscitylocalgovernment) REFERENCES flag_value(code),
  iscommunitydevelopedcorporationownedfirm CHAR,
  CONSTRAINT fk2_iscommunitydevelopedcorporationownedfirm FOREIGN KEY (iscommunitydevelopedcorporationownedfirm) REFERENCES flag_value(code),
  iscommunitydevelopmentcorporation CHAR,
  CONSTRAINT fk2_iscommunitydevelopmentcorporation FOREIGN KEY (iscommunitydevelopmentcorporation) REFERENCES flag_value(code),
  isconstructionfirm CHAR,
  CONSTRAINT fk2_isconstructionfirm FOREIGN KEY (isconstructionfirm) REFERENCES flag_value(code),
  ismanufacturerofgoods CHAR,
  CONSTRAINT fk2_ismanufacturerofgoods FOREIGN KEY (ismanufacturerofgoods) REFERENCES flag_value(code),
  iscorporateentitynottaxexempt CHAR,
  CONSTRAINT fk2_iscorporateentitynottaxexempt FOREIGN KEY (iscorporateentitynottaxexempt) REFERENCES flag_value(code),
  iscountylocalgovernment CHAR,
  CONSTRAINT fk2_iscountylocalgovernment FOREIGN KEY (iscountylocalgovernment) REFERENCES flag_value(code),
  isdomesticshelter CHAR,
  CONSTRAINT fk2_isdomesticshelter FOREIGN KEY (isdomesticshelter) REFERENCES flag_value(code),
  isfederalgovernmentagency CHAR,
  CONSTRAINT fk2_isfederalgovernmentagency FOREIGN KEY (isfederalgovernmentagency) REFERENCES flag_value(code),
  isfederallyfundedresearchanddevelopmentcorp CHAR,
  CONSTRAINT fk2_isfederallyfundedresearchanddevelopmentcorp FOREIGN KEY (isfederallyfundedresearchanddevelopmentcorp) REFERENCES flag_value(code),
  isforeigngovernment CHAR,
  CONSTRAINT fk2_isforeigngovernment FOREIGN KEY (isforeigngovernment) REFERENCES flag_value(code),
  isindiantribe CHAR,
  CONSTRAINT fk2_isindiantribe FOREIGN KEY (isindiantribe) REFERENCES flag_value(code),
  isintermunicipallocalgovernment CHAR,
  CONSTRAINT fk2_isintermunicipallocalgovernment FOREIGN KEY (isintermunicipallocalgovernment) REFERENCES flag_value(code),
  isinternationalorganization CHAR,
  CONSTRAINT fk2_isinternationalorganization FOREIGN KEY (isinternationalorganization) REFERENCES flag_value(code),
  islaborsurplusareafirm CHAR,
  CONSTRAINT fk2_islaborsurplusareafirm FOREIGN KEY (islaborsurplusareafirm) REFERENCES flag_value(code),
  islocalgovernmentowned CHAR,
  CONSTRAINT fk2_islocalgovernmentowned FOREIGN KEY (islocalgovernmentowned) REFERENCES flag_value(code),
  ismunicipalitylocalgovernment CHAR,
  CONSTRAINT fk2_ismunicipalitylocalgovernment FOREIGN KEY (ismunicipalitylocalgovernment) REFERENCES flag_value(code),
  isnativehawaiianownedorganizationorfirm CHAR,
  CONSTRAINT fk2_isnativehawaiianownedorganizationorfirm FOREIGN KEY (isnativehawaiianownedorganizationorfirm) REFERENCES flag_value(code),
  isotherbusinessororganization CHAR,
  CONSTRAINT fk2_isotherbusinessororganization FOREIGN KEY (isotherbusinessororganization) REFERENCES flag_value(code),
  isotherminorityowned CHAR,
  CONSTRAINT fk2_isotherminorityowned FOREIGN KEY (isotherminorityowned) REFERENCES flag_value(code),
  ispartnershiporlimitedliabilitypartnership CHAR,
  CONSTRAINT fk2_ispartnershiporlimitedliabilitypartnership FOREIGN KEY (ispartnershiporlimitedliabilitypartnership) REFERENCES flag_value(code),
  isschooldistrictlocalgovernment CHAR,
  CONSTRAINT fk2_isschooldistrictlocalgovernment FOREIGN KEY (isschooldistrictlocalgovernment) REFERENCES flag_value(code),
  issmallagriculturalcooperative CHAR,
  CONSTRAINT fk2_issmallagriculturalcooperative FOREIGN KEY (issmallagriculturalcooperative) REFERENCES flag_value(code),
  issoleproprietorship CHAR,
  CONSTRAINT fk2_issoleproprietorship FOREIGN KEY (issoleproprietorship) REFERENCES flag_value(code),
  istownshiplocalgovernment CHAR,
  CONSTRAINT fk2_istownshiplocalgovernment FOREIGN KEY (istownshiplocalgovernment) REFERENCES flag_value(code),
  istriballyownedfirm CHAR,
  CONSTRAINT fk2_istriballyownedfirm FOREIGN KEY (istriballyownedfirm) REFERENCES flag_value(code),
  istribalcollege CHAR,
  CONSTRAINT fk2_istribalcollege FOREIGN KEY (istribalcollege) REFERENCES flag_value(code),
  isalaskannativeownedcorporationorfirm CHAR,
  CONSTRAINT fk2_isalaskannativeownedcorporationorfirm FOREIGN KEY (isalaskannativeownedcorporationorfirm) REFERENCES flag_value(code),
  iscorporateentitytaxexempt CHAR,
  CONSTRAINT fk2_iscorporateentitytaxexempt FOREIGN KEY (iscorporateentitytaxexempt) REFERENCES flag_value(code),
  iswomenownedsmallbusiness CHAR,
  CONSTRAINT fk2_iswomenownedsmallbusiness FOREIGN KEY (iswomenownedsmallbusiness) REFERENCES flag_value(code),
  isecondisadvwomenownedsmallbusiness CHAR,
  CONSTRAINT fk2_isecondisadvwomenownedsmallbusiness FOREIGN KEY (isecondisadvwomenownedsmallbusiness) REFERENCES flag_value(code),
  isjointventurewomenownedsmallbusiness CHAR,
  CONSTRAINT fk2_isjointventurewomenownedsmallbusiness FOREIGN KEY (isjointventurewomenownedsmallbusiness) REFERENCES flag_value(code),
  isjointventureecondisadvwomenownedsmallbusiness CHAR,
  CONSTRAINT fk2_isjointventureecondisadvwomenownedsmallbusiness FOREIGN KEY (isjointventureecondisadvwomenownedsmallbusiness) REFERENCES flag_value(code),
  walsh_healy_act CHAR,
  CONSTRAINT fk2_walsh_healy_act FOREIGN KEY (walsh_healy_act) REFERENCES walsh_healy_act(code),
  service_contract_act CHAR,
  CONSTRAINT fk2_service_contract_act FOREIGN KEY (service_contract_act) REFERENCES service_contract_act(code),
  davis_bacon_act CHAR,
  CONSTRAINT fk2_davis_bacon_act FOREIGN KEY (davis_bacon_act) REFERENCES davis_bacon_act(code),
  clinger_cohen_act CHAR,
  CONSTRAINT fk2_clinger_cohen_act FOREIGN KEY (clinger_cohen_act) REFERENCES clinger_cohen_act(code),
  other_statutory_authority TEXT,
  prime_awardee_executive1 TEXT,
  prime_awardee_executive1_compensation MONEY,
  prime_awardee_executive2 TEXT,
  prime_awardee_executive2_compensation MONEY,
  prime_awardee_executive3 TEXT,
  prime_awardee_executive3_compensation MONEY,
  prime_awardee_executive4 TEXT,
  prime_awardee_executive4_compensation MONEY,
  prime_awardee_executive5 TEXT,
  prime_awardee_executive5_compensation MONEY,
  interagency_contracting_authority CHAR,
  CONSTRAINT fk2_interagency_contracting_authority FOREIGN KEY (interagency_contracting_authority) REFERENCES interagency_contracting_authority(code)
);


CREATE OR REPLACE FUNCTION import_contract_csv(file TEXT)
  RETURNS VOID AS $$
BEGIN
  TRUNCATE temp_contract;

  EXECUTE format('COPY temp_contract FROM ''%s'' WITH CSV HEADER DELIMITER AS '',''', file);

  INSERT INTO contract_csv
  (unique_transaction_id,
   last_modified_date,
   query_progress,
   transaction_status,
   dollarsobligated,
   baseandexercisedoptionsvalue,
   baseandalloptionsvalue,
   maj_agency_cat,
   mod_agency,
   maj_fund_agency_cat,
   contractingofficeagencyid,
   contractingofficeid,
   fundingrequestingagencyid,
   fundingrequestingofficeid,
   fundedbyforeignentity,
   signeddate,
   effectivedate,
   currentcompletiondate,
   ultimatecompletiondate,
   lastdatetoorder,
   contractactiontype,
   reasonformodification,
   typeofcontractpricing,
   priceevaluationpercentdifference,
   subcontractplan,
   lettercontract,
   multiyearcontract,
   performancebasedservicecontract,
   majorprogramcode,
   contingencyhumanitarianpeacekeepingoperation,
   contractfinancing,
   costorpricingdata,
   costaccountingstandardsclause,
   descriptionofcontractrequirement,
   purchasecardaspaymentmethod,
   numberofactions,
   nationalinterestactioncode,
   progsourceagency,
   progsourceaccount,
   progsourcesubacct,
   account_title,
   rec_flag,
   typeofidc,
   multipleorsingleawardidc,
   programacronym,
   vendorname,
   vendoralternatename,
   vendorlegalorganizationname,
   vendordoingasbusinessname,
   divisionname,
   divisionnumberorofficecode,
   vendorenabled,
   vendorlocationdisableflag,
   ccrexception,
   streetaddress,
   streetaddress2,
   streetaddress3,
   city,
   state,
   zipcode,
   vendorcountrycode,
   vendor_state_code,
   vendor_cd,
   congressionaldistrict,
   vendorsitecode,
   vendoralternatesitecode,
   dunsnumber,
   parentdunsnumber,
   phoneno,
   faxno,
   registrationdate,
   renewaldate,
   mod_parent,
   locationcode,
   statecode,
   PlaceofPerformanceCity,
   pop_state_code,
   placeofperformancecountrycode,
   placeofperformancezipcode,
   pop_cd,
   placeofperformancecongressionaldistrict,
   psc_cat,
   productorservicecode,
   systemequipmentcode,
   claimantprogramcode,
   principalnaicscode,
   informationtechnologycommercialitemcategory,
   gfe_gfp,
   useofepadesignatedproducts,
   recoveredmaterialclauses,
   seatransportation,
   contractbundling,
   consolidatedcontract,
   countryoforigin,
   placeofmanufacture,
   manufacturingorganizationtype,
   agencyid,
   piid,
   modnumber,
   transactionnumber,
   fiscal_year,
   idvagencyid,
   idvpiid,
   idvmodificationnumber,
   solicitationid,
   extentcompeted,
   reasonnotcompeted,
   numberofoffersreceived,
   commercialitemacquisitionprocedures,
   commercialitemtestprogram,
   smallbusinesscompetitivenessdemonstrationprogram,
   a76action,
   competitiveprocedures,
   solicitationprocedures,
   typeofsetaside,
   localareasetaside,
   evaluatedpreference,
   fedbizopps,
   research,
   statutoryexceptiontofairopportunity,
   organizationaltype,
   numberofemployees,
   annualrevenue,
   firm8aflag,
   hubzoneflag,
   sdbflag,
   issbacertifiedsmalldisadvantagedbusiness,
   shelteredworkshopflag,
   hbcuflag,
   educationalinstitutionflag,
   womenownedflag,
   veteranownedflag,
   srdvobflag,
   localgovernmentflag,
   minorityinstitutionflag,
   aiobflag,
   stategovernmentflag,
   federalgovernmentflag,
   minorityownedbusinessflag,
   apaobflag,
   tribalgovernmentflag,
   baobflag,
   naobflag,
   saaobflag,
   nonprofitorganizationflag,
   isothernotforprofitorganization,
   isforprofitorganization,
   isfoundation,
   haobflag,
   ishispanicservicinginstitution,
   emergingsmallbusinessflag,
   hospitalflag,
   contractingofficerbusinesssizedetermination,
   is1862landgrantcollege,
   is1890landgrantcollege,
   is1994landgrantcollege,
   isveterinarycollege,
   isveterinaryhospital,
   isprivateuniversityorcollege,
   isschoolofforestry,
   isstatecontrolledinstitutionofhigherlearning,
   isserviceprovider,
   receivescontracts,
   receivesgrants,
   receivescontractsandgrants,
   isairportauthority,
   iscouncilofgovernments,
   ishousingauthoritiespublicortribal,
   isinterstateentity,
   isplanningcommission,
   isportauthority,
   istransitauthority,
   issubchapterscorporation,
   islimitedliabilitycorporation,
   isforeignownedandlocated,
   isarchitectureandengineering,
   isdotcertifieddisadvantagedbusinessenterprise,
   iscitylocalgovernment,
   iscommunitydevelopedcorporationownedfirm,
   iscommunitydevelopmentcorporation,
   isconstructionfirm,
   ismanufacturerofgoods,
   iscorporateentitynottaxexempt,
   iscountylocalgovernment,
   isdomesticshelter,
   isfederalgovernmentagency,
   isfederallyfundedresearchanddevelopmentcorp,
   isforeigngovernment,
   isindiantribe,
   isintermunicipallocalgovernment,
   isinternationalorganization,
   islaborsurplusareafirm,
   islocalgovernmentowned,
   ismunicipalitylocalgovernment,
   isnativehawaiianownedorganizationorfirm,
   isotherbusinessororganization,
   isotherminorityowned,
   ispartnershiporlimitedliabilitypartnership,
   isschooldistrictlocalgovernment,
   issmallagriculturalcooperative,
   issoleproprietorship,
   istownshiplocalgovernment,
   istriballyownedfirm,
   istribalcollege,
   isalaskannativeownedcorporationorfirm,
   iscorporateentitytaxexempt,
   iswomenownedsmallbusiness,
   isecondisadvwomenownedsmallbusiness,
   isjointventurewomenownedsmallbusiness,
   isjointventureecondisadvwomenownedsmallbusiness,
   walshhealyact,
   servicecontractact,
   davisbaconact,
   clingercohenact,
   otherstatutoryauthority,
   prime_awardee_executive1,
   prime_awardee_executive1_compensation,
   prime_awardee_executive2,
   prime_awardee_executive2_compensation,
   prime_awardee_executive3,
   prime_awardee_executive3_compensation,
   prime_awardee_executive4,
   prime_awardee_executive4_compensation,
   prime_awardee_executive5,
   prime_awardee_executive5_compensation,
   interagencycontractingauthority
  )
    SELECT
      nullify_text(unique_transaction_id),
      validate_date(last_modified_date),
      nextval('query_progress'),
      nullify_text(transaction_status),
      nullify_text(dollarsobligated),
      nullify_text(baseandexercisedoptionsvalue),
      nullify_text(baseandalloptionsvalue),
      nullify_text(maj_agency_cat),
      nullify_text(mod_agency),
      nullify_text(maj_fund_agency_cat),
      nullify_text(contractingofficeagencyid),
      nullify_text(contractingofficeid),
      nullify_text(fundingrequestingagencyid),
      nullify_text(fundingrequestingofficeid),
      nullify_text(fundedbyforeignentity),
      nullify_text(signeddate),
      nullify_text(effectivedate),
      nullify_text(currentcompletiondate),
      nullify_text(ultimatecompletiondate),
      nullify_text(lastdatetoorder),
      nullify_text(contractactiontype),
      nullify_text(reasonformodification),
      nullify_text(typeofcontractpricing),
      nullify_text(priceevaluationpercentdifference),
      nullify_text(subcontractplan),
      nullify_text(lettercontract),
      nullify_text(multiyearcontract),
      nullify_text(performancebasedservicecontract),
      nullify_text(majorprogramcode),
      nullify_text(contingencyhumanitarianpeacekeepingoperation),
      nullify_text(contractfinancing),
      nullify_text(costorpricingdata),
      nullify_text(costaccountingstandardsclause),
      nullify_text(descriptionofcontractrequirement),
      nullify_text(purchasecardaspaymentmethod),
      nullify_text(numberofactions),
      nullify_text(nationalinterestactioncode),
      nullify_text(progsourceagency),
      nullify_text(progsourceaccount),
      nullify_text(progsourcesubacct),
      nullify_text(account_title),
      nullify_text(rec_flag),
      nullify_text(typeofidc),
      nullify_text(multipleorsingleawardidc),
      nullify_text(programacronym),
      nullify_text(vendorname),
      nullify_text(vendoralternatename),
      nullify_text(vendorlegalorganizationname),
      nullify_text(vendordoingasbusinessname),
      nullify_text(divisionname),
      nullify_text(divisionnumberorofficecode),
      nullify_text(vendorenabled),
      nullify_text(vendorlocationdisableflag),
      nullify_text(ccrexception),
      nullify_text(streetaddress),
      nullify_text(streetaddress2),
      nullify_text(streetaddress3),
      nullify_text(city),
      nullify_text(state),
      nullify_text(zipcode),
      nullify_text(vendorcountrycode),
      nullify_text(vendor_state_code),
      nullify_text(vendor_cd),
      nullify_text(congressionaldistrict),
      nullify_text(vendorsitecode),
      nullify_text(vendoralternatesitecode),
      nullify_text(dunsnumber),
      nullify_text(parentdunsnumber),
      nullify_text(phoneno),
      nullify_text(faxno),
      nullify_text(registrationdate),
      nullify_text(renewaldate),
      nullify_text(mod_parent),
      nullify_text(locationcode),
      nullify_text(statecode),
      nullify_text(PlaceofPerformanceCity),
      nullify_text(pop_state_code),
      nullify_text(placeofperformancecountrycode),
      nullify_text(placeofperformancezipcode),
      nullify_text(pop_cd),
      nullify_text(placeofperformancecongressionaldistrict),
      nullify_text(psc_cat),
      nullify_text(productorservicecode),
      nullify_text(systemequipmentcode),
      nullify_text(claimantprogramcode),
      nullify_text(principalnaicscode),
      nullify_text(informationtechnologycommercialitemcategory),
      nullify_text(gfe_gfp),
      nullify_text(useofepadesignatedproducts),
      nullify_text(recoveredmaterialclauses),
      nullify_text(seatransportation),
      nullify_text(contractbundling),
      nullify_text(consolidatedcontract),
      nullify_text(countryoforigin),
      nullify_text(placeofmanufacture),
      nullify_text(manufacturingorganizationtype),
      nullify_text(agencyid),
      nullify_text(piid),
      nullify_text(modnumber),
      nullify_text(transactionnumber),
      nullify_text(fiscal_year),
      nullify_text(idvagencyid),
      nullify_text(idvpiid),
      nullify_text(idvmodificationnumber),
      nullify_text(solicitationid),
      nullify_text(extentcompeted),
      nullify_text(reasonnotcompeted),
      nullify_text(numberofoffersreceived),
      nullify_text(commercialitemacquisitionprocedures),
      nullify_text(commercialitemtestprogram),
      nullify_text(smallbusinesscompetitivenessdemonstrationprogram),
      nullify_text(a76action),
      nullify_text(competitiveprocedures),
      nullify_text(solicitationprocedures),
      nullify_text(typeofsetaside),
      nullify_text(localareasetaside),
      nullify_text(evaluatedpreference),
      nullify_text(fedbizopps),
      nullify_text(research),
      nullify_text(statutoryexceptiontofairopportunity),
      nullify_text(organizationaltype),
      nullify_text(numberofemployees),
      nullify_text(annualrevenue),
      nullify_text(firm8aflag),
      nullify_text(hubzoneflag),
      nullify_text(sdbflag),
      nullify_text(issbacertifiedsmalldisadvantagedbusiness),
      nullify_text(shelteredworkshopflag),
      nullify_text(hbcuflag),
      nullify_text(educationalinstitutionflag),
      nullify_text(womenownedflag),
      nullify_text(veteranownedflag),
      nullify_text(srdvobflag),
      nullify_text(localgovernmentflag),
      nullify_text(minorityinstitutionflag),
      nullify_text(aiobflag),
      nullify_text(stategovernmentflag),
      nullify_text(federalgovernmentflag),
      nullify_text(minorityownedbusinessflag),
      nullify_text(apaobflag),
      nullify_text(tribalgovernmentflag),
      nullify_text(baobflag),
      nullify_text(naobflag),
      nullify_text(saaobflag),
      nullify_text(nonprofitorganizationflag),
      nullify_text(isothernotforprofitorganization),
      nullify_text(isforprofitorganization),
      nullify_text(isfoundation),
      nullify_text(haobflag),
      nullify_text(ishispanicservicinginstitution),
      nullify_text(emergingsmallbusinessflag),
      nullify_text(hospitalflag),
      nullify_text(contractingofficerbusinesssizedetermination),
      nullify_text(is1862landgrantcollege),
      nullify_text(is1890landgrantcollege),
      nullify_text(is1994landgrantcollege),
      nullify_text(isveterinarycollege),
      nullify_text(isveterinaryhospital),
      nullify_text(isprivateuniversityorcollege),
      nullify_text(isschoolofforestry),
      nullify_text(isstatecontrolledinstitutionofhigherlearning),
      nullify_text(isserviceprovider),
      nullify_text(receivescontracts),
      nullify_text(receivesgrants),
      nullify_text(receivescontractsandgrants),
      nullify_text(isairportauthority),
      nullify_text(iscouncilofgovernments),
      nullify_text(ishousingauthoritiespublicortribal),
      nullify_text(isinterstateentity),
      nullify_text(isplanningcommission),
      nullify_text(isportauthority),
      nullify_text(istransitauthority),
      nullify_text(issubchapterscorporation),
      nullify_text(islimitedliabilitycorporation),
      nullify_text(isforeignownedandlocated),
      nullify_text(isarchitectureandengineering),
      nullify_text(isdotcertifieddisadvantagedbusinessenterprise),
      nullify_text(iscitylocalgovernment),
      nullify_text(iscommunitydevelopedcorporationownedfirm),
      nullify_text(iscommunitydevelopmentcorporation),
      nullify_text(isconstructionfirm),
      nullify_text(ismanufacturerofgoods),
      nullify_text(iscorporateentitynottaxexempt),
      nullify_text(iscountylocalgovernment),
      nullify_text(isdomesticshelter),
      nullify_text(isfederalgovernmentagency),
      nullify_text(isfederallyfundedresearchanddevelopmentcorp),
      nullify_text(isforeigngovernment),
      nullify_text(isindiantribe),
      nullify_text(isintermunicipallocalgovernment),
      nullify_text(isinternationalorganization),
      nullify_text(islaborsurplusareafirm),
      nullify_text(islocalgovernmentowned),
      nullify_text(ismunicipalitylocalgovernment),
      nullify_text(isnativehawaiianownedorganizationorfirm),
      nullify_text(isotherbusinessororganization),
      nullify_text(isotherminorityowned),
      nullify_text(ispartnershiporlimitedliabilitypartnership),
      nullify_text(isschooldistrictlocalgovernment),
      nullify_text(issmallagriculturalcooperative),
      nullify_text(issoleproprietorship),
      nullify_text(istownshiplocalgovernment),
      nullify_text(istriballyownedfirm),
      nullify_text(istribalcollege),
      nullify_text(isalaskannativeownedcorporationorfirm),
      nullify_text(iscorporateentitytaxexempt),
      nullify_text(iswomenownedsmallbusiness),
      nullify_text(isecondisadvwomenownedsmallbusiness),
      nullify_text(isjointventurewomenownedsmallbusiness),
      nullify_text(isjointventureecondisadvwomenownedsmallbusiness),
      nullify_text(walshhealyact),
      nullify_text(servicecontractact),
      nullify_text(davisbaconact),
      nullify_text(clingercohenact),
      nullify_text(otherstatutoryauthority),
      nullify_text(prime_awardee_executive1),
      nullify_text(prime_awardee_executive1_compensation),
      nullify_text(prime_awardee_executive2),
      nullify_text(prime_awardee_executive2_compensation),
      nullify_text(prime_awardee_executive3),
      nullify_text(prime_awardee_executive3_compensation),
      nullify_text(prime_awardee_executive4),
      nullify_text(prime_awardee_executive4_compensation),
      nullify_text(prime_awardee_executive5),
      nullify_text(prime_awardee_executive5_compensation),
      nullify_text(interagencycontractingauthority)
    FROM temp_contract
  ON CONFLICT (unique_transaction_id, last_modified_date)
    DO NOTHING;
END
$$ LANGUAGE plpgsql;

SELECT import_contract_csv('/home/alex/PycharmProjects/opencontractorsdatabasev2/datafeeds/datafeeds/2012_minor.csv');
SELECT import_contract_csv('/home/alex/PycharmProjects/opencontractorsdatabasev2/datafeeds/datafeeds/2013_minor.csv');
SELECT import_contract_csv('/home/alex/PycharmProjects/opencontractorsdatabasev2/datafeeds/datafeeds/2014_minor.csv');
SELECT import_contract_csv('/home/alex/PycharmProjects/opencontractorsdatabasev2/datafeeds/datafeeds/2015_minor.csv');
SELECT import_contract_csv('/home/alex/PycharmProjects/opencontractorsdatabasev2/datafeeds/datafeeds/2016_minor.csv');


update contract
set claimant_program =
(CASE claimant_program
 WHEN 'A30' THEN 'A3'
 WHEN 'A70' THEN 'A7'
 WHEN 'B90' THEN 'B9'
 WHEN 'C20' THEN 'C2'
WHEN 'S10' THEN 'S1'
 END)
where claimant_program in ('A30', 'A70', 'B90', 'C20', 'S10');

delete from claimant_program
WHERE code in ('A30', 'A70', 'B90', 'C20', 'S10');

create index idx_contractor_state on contract(contractor_state);
create index idx_place_of_performance_state on contract(place_of_performance_state);
create index idx_place_of_performance_state_redundant on contract(place_of_performance_state_redundant);

update contract
  set contractor_state = contractor_other_location_info
where contractor_other_location_info in ('AA', 'AE', 'AP', 'FM');

update contract
  set contractor_other_location_info = NULL
where contractor_other_location_info in ('AA', 'AE', 'AP', 'FM');

update contract
set place_of_performance_state = 'XX'
where place_of_performance_state in ('BC', 'GB', 'GM', 'JA', 'QC', 'UK', 'US');

delete from state
where status is null;

alter table state drop column american_state;