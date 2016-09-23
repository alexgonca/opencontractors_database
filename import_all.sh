#!/bin/bash

if ! hash zip 2>/dev/null; then
  echo "zip is not installed. Aborting."
  exit 1
fi

if ! hash unzip 2>/dev/null; then
  echo "unzip is not installed. Aborting."
  exit 1
fi

if ! hash psql 2>/dev/null; then
  echo "psql is not installed. Aborting."
  exit 1
fi



day=$(date +'%d')
if [ "$((day))" -ge 15 ]
    then timestamp=$(date +'%Y%m');current_year=$(date +'%Y')
    else timestamp=$(date -d "$d - 30 days" +%Y%m);current_year=$(date -d "$d - 30 days" +%Y)
fi



psql -c "\i create_database.sql"

for ((year=2000;year<=current_year;year++))
do
    wget http://download.usaspending.gov/data_archives/${timestamp}/csv/${year}_DOD_Contracts_Full_${timestamp}15.csv.zip -P aux
    unzip -j ./aux/${year}_DOD_Contracts_Full_${timestamp}15.csv.zip -d ./aux
    python clean_database.py ./aux/${year}_DOD_Contracts_Full_${timestamp}15.csv ./aux/${timestamp}_${year}_oc_full.csv
    psql -c "\copy contract_all (unique_transaction_id, last_modified_date, transaction_status, dollars_obligated, base_and_exercised_options_value, base_and_all_options_value, contracting_department_id, contracting_department_name, contracting_agency_id, contracting_agency_name, contracting_agency_id_redundant, contracting_agency_name_redundant, contracting_office_id, contracting_office_name, funding_department_id, funding_department_name, funding_agency_id, funding_agency_name, funding_office_id, funding_office_name, funded_by_foreign_entity, signed_date, effective_date, current_completion_date, ultimate_completion_date, last_date_to_order, contract_action_type, reason_for_modification, type_of_contract_pricing, price_evaluation_percent_difference, subcontract_plan, letter_contract, multiyear_contract, performance_based_service_contract, major_program_code, contingency_humanitarian_peacekeeping_operation, contract_financing, cost_or_pricing_data, cost_accounting_standards_clause, descriptionofcontractrequirement, purchase_card_as_payment_method, number_of_actions, national_interest_action, prog_source_agency, prog_source_account, prog_source_subacct, account_title, recovery_flag, type_of_idc, multiple_or_single_award_idc, program_acronym, contractor_name, contractor_alternate_name, contractor_legal_organization_name, contractor_doing_as_business_name, contractor_division_name, contractor_division_number_or_office_code, contractor_enabled, contractor_location_disable_flag, contractor_ccr_exception, contractor_street_address_1, contractor_street_address_2, contractor_street_address_3, contractor_city, contractor_state, contractor_state_redundant, contractor_zip_code, contractor_country, contractor_congressional_district, contractor_congressional_district_redundant, contractor_site_code, contractor_alternate_site_code, contractor_duns_number, contractor_parent_duns_number, contractor_phone_number, contractor_fax_number, contractor_registration_date, contractor_renewal_date, contractor_parent_name, location_code, place_of_performance_city, place_of_performance_state, place_of_performance_state_redundant, place_of_performance_country, place_of_performance_zip_code, place_of_performance_congressional_district, place_of_performance_congressional_district_redundant, product_or_service_category, product_or_service_code, system_or_equipment_code, system_or_equipment_description, claimant_program, naics, information_technology_commercial_item_category, gfe_gfp, use_of_epa_designated_products, recovered_material_clauses, sea_transportation, contract_bundling, consolidated_contract, country_of_origin, place_of_manufacture, manufacturing_organization_type, agency_id, agency_name, piid, modification_number, transaction_number, fiscal_year, idv_agency_id, idv_piid, idv_modification_number, solicitation_id, extent_competed, reason_not_competed, number_of_offers_received, commercial_item_acquisition_procedures, commercial_item_test_program, small_business_competitiveness_demonstration_program, a76action, competitive_procedures, solicitation_procedures, type_of_set_aside, local_area_set_aside, evaluated_preference, fedbizopps, research, statutory_exception_to_fair_opportunity, contractor_organizational_type, contractor_number_of_employees, contractor_annual_revenue, firm8aflag, hubzoneflag, sdbflag, issbacertifiedsmalldisadvantagedbusiness, shelteredworkshopflag, hbcuflag, educationalinstitutionflag, womenownedflag, veteranownedflag, srdvobflag, localgovernmentflag, minorityinstitutionflag, aiobflag, stategovernmentflag, federalgovernmentflag, minorityownedbusinessflag, apaobflag, tribalgovernmentflag, baobflag, naobflag, saaobflag, nonprofitorganizationflag, isothernotforprofitorganization, isforprofitorganization, isfoundation, haobflag, ishispanicservicinginstitution, emergingsmallbusinessflag, hospitalflag, contractingofficerbusinesssizedetermination, is1862landgrantcollege, is1890landgrantcollege, is1994landgrantcollege, isveterinarycollege, isveterinaryhospital, isprivateuniversityorcollege, isschoolofforestry, isstatecontrolledinstitutionofhigherlearning, isserviceprovider, receivescontracts, receivesgrants, receivescontractsandgrants, isairportauthority, iscouncilofgovernments, ishousingauthoritiespublicortribal, isinterstateentity, isplanningcommission, isportauthority, istransitauthority, issubchapterscorporation, islimitedliabilitycorporation, isforeignownedandlocated, isarchitectureandengineering, isdotcertifieddisadvantagedbusinessenterprise, iscitylocalgovernment, iscommunitydevelopedcorporationownedfirm, iscommunitydevelopmentcorporation, isconstructionfirm, ismanufacturerofgoods, iscorporateentitynottaxexempt, iscountylocalgovernment, isdomesticshelter, isfederalgovernmentagency, isfederallyfundedresearchanddevelopmentcorp, isforeigngovernment, isindiantribe, isintermunicipallocalgovernment, isinternationalorganization, islaborsurplusareafirm, islocalgovernmentowned, ismunicipalitylocalgovernment, isnativehawaiianownedorganizationorfirm, isotherbusinessororganization, isotherminorityowned, ispartnershiporlimitedliabilitypartnership, isschooldistrictlocalgovernment, issmallagriculturalcooperative, issoleproprietorship, istownshiplocalgovernment, istriballyownedfirm, istribalcollege, isalaskannativeownedcorporationorfirm, iscorporateentitytaxexempt, iswomenownedsmallbusiness, isecondisadvwomenownedsmallbusiness, isjointventurewomenownedsmallbusiness, isjointventureecondisadvwomenownedsmallbusiness, walsh_healy_act, service_contract_act, davis_bacon_act, clinger_cohen_act, other_statutory_authority, prime_awardee_executive1, prime_awardee_executive1_compensation, prime_awardee_executive2, prime_awardee_executive2_compensation, prime_awardee_executive3, prime_awardee_executive3_compensation, prime_awardee_executive4, prime_awardee_executive4_compensation, prime_awardee_executive5, prime_awardee_executive5_compensation, interagency_contracting_authority) FROM './aux/${timestamp}_${year}_oc_full.csv' CSV HEADER;"
    rm ./aux/${year}_DOD_Contracts_Full_${timestamp}15.csv
    zip ./aux/${timestamp}_${year}_oc_full.zip ./aux/${timestamp}_${year}_oc_full.csv
    rm ./aux/${timestamp}_${year}_oc_full.csv
done

psql -c "\i generate_consolidated_tables.sql"

