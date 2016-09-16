import argparse
import glob
import csv
import constants
import re
from time import strftime

#
# Generic functions:
#

def nullify_text(text):
    if text is not None:
        text = text.strip()
        if (text == '') or not bool(re.search('[A-Za-z0-9]', text)):
            text = None
    return text


def validate_date(text):
    text = nullify_text(text)
    if text == '01/01/1900':
        text = None
    return text


def left_text_and_upper(text):
    text = nullify_text(text)
    if text is not None:
        if text.find(':') == -1:
            text = text.upper()
        else:
            text = text[0:text.find(':')].upper()
            text = nullify_text(text)
    return text


def right_text_and_upper(text):
    text = nullify_text(text)
    if text is not None:
        if text.find(':') == -1:
            text = None
        else:
            text = text[text.find(':') + 1:].upper()
            text = nullify_text(text)
    return text


def validate_state_adapt(text):
    text = nullify_text(text)
    if text is not None:
        left_text = left_text_and_upper(text)
        if left_text is None:
            left_text = ''
        if len(left_text) == 2:
            text = left_text
        else:
            right_text = right_text_and_upper(text)
            text = constants.STATES.get(right_text, text)
    return text

def validate_country(text):
    text = nullify_text(text)
    if text is not None:
        left_text = left_text_and_upper(text)
        if left_text is None:
            left_text = ''
        if len(left_text) <= 3:
            text = {
                '': None,
                'DE1': 'DEU',
                'JP1': 'JPN',
                'JTN': 'JPN',
                'UA1': 'USA',
                'US:': 'USA',
                'US': 'USA'
            }.get(left_text, left_text)
        else:
            text = constants.COUNTRIES.get(left_text, text)
    return text

#
# Specific functions:
#

def funded_by_foreign_entity(text):
    text = nullify_text(text)
    if text == 'Not Applicable':
        text = 'X'
    return text


def contract_action_type(text):
    text = nullify_text(text)
    return {
        'BPA Blanket Purchase Agreement': 'BPA',
        'BPA Call Blanket Purchase Agreement': 'BPA Call',
        'BOA Basic Ordering Agreement': 'BOA',
        'IDC Indefinite Delivery Contract': 'IDC',
        'PO Purchase Order': 'PO',
        'DO Delivery Order': 'DO',
        'DCA Definitive Contract': 'DCA',
        'FSS Federal Supply Schedule': 'FSS'
    }.get(text, text)


def letter_contract(text):
    text = left_text_and_upper(text)
    if text == 'N':
        text = 'Y'
    return text


def contract_financing(text):
    text = left_text_and_upper(text)
    if text in ['B', 'N']:
        text = 'X'
    return text


def type_of_contract_pricing(text):
    text = left_text_and_upper(text)
    if text == 'NO':
        text = None
    return text


def performance_based_service_contract(text):
    right_text = right_text_and_upper(text)
    return {
        'NO - SERVICE WHERE PBA IS NOT USED.': 'N',
        'YES - SERVICE WHERE PBA IS USED.': 'Y',
        'NOT APPLICABLE': 'X',
        None: None
    }.get(right_text, text)


def national_interest_action(text):
    text = left_text_and_upper(text)
    if text == 'NONE':
        text = None
    return text


def type_of_idc(text):
    text = nullify_text(text)
    return {
        'INDEFINITE DELIVERY / REQUIREMENTS': 'A',
        'INDEFINITE DELIVERY / INDEFINITE QUANTITY': 'B',
        'INDEFINITE DELIVERY / DEFINITE QUANTITY': 'C'
    }.get(text, text)


def ccr_exception(text):
    text = nullify_text(text)
    return {
        'A': '6',
        'G': '1',
        'M': '7'
    }.get(text, text)


def place_of_manufacture(text):
    text = left_text_and_upper(text)
    if text in ['1', 'S', 'U']:
        text = 'X'
    return text


def a76action(text):
    text = nullify_text(text)
    return {
        'Yes': 'Y',
        'No': 'N'
    }.get(text, text)


def solicitation_procedures(text):
    text = left_text_and_upper(text)
    if text in ['M', 'N']:
        text = 'X'
    elif 'NONE':
        text = None
    return text


def local_area_set_aside(text):
    text = nullify_text(text)
    if text == 'BSDF':
        text = 'X'
    return text


def is_dot_certified(text):
    text = nullify_text(text)
    if text == 'true':
        text = 'Y'
    return text


def transform_row(record):
    new_record = {}
    new_record['unique_transaction_id'] = nullify_text(record['unique_transaction_id'])
    new_record['last_modified_date'] = validate_date(record['last_modified_date'])
    new_record['transaction_status'] = nullify_text(record['transaction_status'])
    new_record['dollars_obligated'] = nullify_text(record['dollarsobligated'])
    new_record['base_and_exercised_options_value'] = nullify_text(record['baseandexercisedoptionsvalue'])
    new_record['base_and_all_options_value'] = nullify_text(record['baseandalloptionsvalue'])
    new_record['contracting_department_id'] = left_text_and_upper(record['maj_agency_cat'])
    new_record['contracting_department_name'] = right_text_and_upper(record['maj_agency_cat'])
    new_record['contracting_agency_id'] = left_text_and_upper(record['contractingofficeagencyid'])
    new_record['contracting_agency_name'] = right_text_and_upper(record['contractingofficeagencyid'])
    new_record['contracting_agency_id_redundant'] = left_text_and_upper(record['mod_agency'])
    new_record['contracting_agency_name_redundant'] = right_text_and_upper(record['mod_agency'])
    new_record['contracting_office_id'] = left_text_and_upper(record['contractingofficeid'])
    new_record['contracting_office_name'] = right_text_and_upper(record['contractingofficeid'])
    new_record['funding_department_id'] = left_text_and_upper(record['maj_fund_agency_cat'])
    new_record['funding_department_name'] = right_text_and_upper(record['maj_fund_agency_cat'])
    new_record['funding_agency_id'] = left_text_and_upper(record['fundingrequestingagencyid'])
    new_record['funding_agency_name'] = right_text_and_upper(record['fundingrequestingagencyid'])
    new_record['funding_office_id'] = left_text_and_upper(record['fundingrequestingofficeid'])
    new_record['funding_office_name'] = right_text_and_upper(record['fundingrequestingofficeid'])
    new_record['funded_by_foreign_entity'] = funded_by_foreign_entity(record['fundedbyforeignentity'])
    new_record['signed_date'] = validate_date(record['signeddate'])
    new_record['effective_date'] = validate_date(record['effectivedate'])
    new_record['current_completion_date'] = validate_date(record['currentcompletiondate'])
    new_record['ultimate_completion_date'] = validate_date(record['ultimatecompletiondate'])
    new_record['last_date_to_order'] = validate_date(record['lastdatetoorder'])
    new_record['contract_action_type'] = contract_action_type(record['contractactiontype'])
    new_record['reason_for_modification'] = left_text_and_upper(record['reasonformodification'])
    new_record['type_of_contract_pricing'] = type_of_contract_pricing(record['typeofcontractpricing'])
    new_record['price_evaluation_percent_difference'] = nullify_text(record['priceevaluationpercentdifference'])
    new_record['subcontract_plan'] = left_text_and_upper(record['subcontractplan'])
    new_record['letter_contract'] = letter_contract(record['lettercontract'])
    new_record['multiyear_contract'] = left_text_and_upper(record['multiyearcontract'])
    new_record['performance_based_service_contract'] = performance_based_service_contract(record['performancebasedservicecontract'])
    new_record['major_program_code'] = nullify_text(record['majorprogramcode'])
    new_record['contingency_humanitarian_peacekeeping_operation'] = left_text_and_upper(
        record['contingencyhumanitarianpeacekeepingoperation'])
    new_record['contract_financing'] = contract_financing(record['contractfinancing'])
    new_record['cost_or_pricing_data'] = left_text_and_upper(record['costorpricingdata'])
    new_record['cost_accounting_standards_clause'] = nullify_text(record['costaccountingstandardsclause'])
    new_record['descriptionofcontractrequirement'] = nullify_text(record['descriptionofcontractrequirement'])
    new_record['purchase_card_as_payment_method'] = left_text_and_upper(record['purchasecardaspaymentmethod'])
    new_record['number_of_actions'] = nullify_text(record['numberofactions'])
    new_record['national_interest_action'] = national_interest_action(record['nationalinterestactioncode'])
    new_record['prog_source_agency'] = nullify_text(record['progsourceagency'])
    new_record['prog_source_account'] = nullify_text(record['progsourceaccount'])
    new_record['prog_source_subacct'] = nullify_text(record['progsourcesubacct'])
    new_record['account_title'] = nullify_text(record['account_title'])
    new_record['recovery_flag'] = nullify_text(record['rec_flag'])
    new_record['type_of_idc'] = type_of_idc(record['typeofidc'])
    new_record['multiple_or_single_award_idc'] = left_text_and_upper(record['multipleorsingleawardidc'])
    new_record['program_acronym'] = nullify_text(record['programacronym'])
    new_record['contractor_name'] = nullify_text(record['vendorname'])
    new_record['contractor_alternate_name'] = nullify_text(record['vendoralternatename'])
    new_record['contractor_legal_organization_name'] = nullify_text(record['vendorlegalorganizationname'])
    new_record['contractor_doing_as_business_name'] = nullify_text(record['vendordoingasbusinessname'])
    new_record['contractor_division_name'] = nullify_text(record['divisionname'])
    new_record['contractor_division_number_or_office_code'] = nullify_text(record['divisionnumberorofficecode'])
    new_record['contractor_enabled'] = nullify_text(record['vendorenabled'])
    new_record['contractor_location_disable_flag'] = nullify_text(record['vendorlocationdisableflag'])
    new_record['contractor_ccr_exception'] = ccr_exception(record['ccrexception'])
    new_record['contractor_street_address_1'] = nullify_text(record['streetaddress'])
    new_record['contractor_street_address_2'] = nullify_text(record['streetaddress2'])
    new_record['contractor_street_address_3'] = nullify_text(record['streetaddress3'])
    new_record['contractor_city'] = nullify_text(record['city'])
    new_record['contractor_state'] = contractor_state(record['state'])
    new_record['contractor_other_location_info'] = contractor_other_location_info(record['state'])
    new_record['contractor_state_other_info_redundant'] = nullify_text(record['vendor_state_code'])
    new_record['contractor_zip_code'] = nullify_text(record['zipcode'])
    new_record['contractor_country'] = validate_country(record['vendorcountrycode'])
    new_record['contractor_congressional_district'] = nullify_text(record['congressionaldistrict'])
    new_record['contractor_congressional_district_redundant'] = nullify_text(record['vendor_cd'])
    new_record['contractor_site_code'] = nullify_text(record['vendorsitecode'])
    new_record['contractor_alternate_site_code'] = nullify_text(record['vendoralternatesitecode'])
    new_record['contractor_duns_number'] = nullify_text(record['dunsnumber'])
    new_record['contractor_parent_duns_number'] = nullify_text(record['parentdunsnumber'])
    new_record['contractor_phone_number'] = nullify_text(record['phoneno'])
    new_record['contractor_fax_number'] = nullify_text(record['faxno'])
    new_record['contractor_registration_date'] = validate_date(record['registrationdate'])
    new_record['contractor_renewal_date'] = validate_date(record['renewaldate'])
    new_record['contractor_parent_name'] = nullify_text(record['mod_parent'])
    new_record['location_code'] = nullify_text(record['locationcode'])
    new_record['place_of_performance_city'] = nullify_text(record['PlaceofPerformanceCity'])
    new_record['place_of_performance_state'] = validate_state(record['pop_state_code'])
    new_record['place_of_performance_state_redundant'] = validate_state(record['statecode'])
    new_record['place_of_performance_country'] = validate_country(record['placeofperformancecountrycode'])
    new_record['place_of_performance_zip_code'] = nullify_text(record['placeofperformancezipcode'])
    new_record['place_of_performance_congressional_district'] = nullify_text(
        record['placeofperformancecongressionaldistrict'])
    new_record['place_of_performance_congressional_district_redundant'] = nullify_text(record['pop_cd'])
    new_record['product_or_service_category'] = nullify_text(record['psc_cat'])
    new_record['product_or_service_code'] = left_text_and_upper(record['productorservicecode'])
    new_record['system_or_equipment_code'] = left_text_and_upper(record['systemequipmentcode'])
    new_record['system_or_equipment_description'] = right_text_and_upper(record['systemequipmentcode'])
    new_record['claimant_program'] = claimant_program(record['claimantprogramcode'])
    new_record['naics'] = left_text_and_upper(record['principalnaicscode'])
    new_record['information_technology_commercial_item_category'] = left_text_and_upper(
        record['informationtechnologycommercialitemcategory'])
    new_record['gfe_gfp'] = left_text_and_upper(record['gfe_gfp'])
    new_record['use_of_epa_designated_products'] = left_text_and_upper(record['useofepadesignatedproducts'])
    new_record['recovered_material_clauses'] = left_text_and_upper(record['recoveredmaterialclauses'])
    new_record['sea_transportation'] = left_text_and_upper(record['seatransportation'])
    new_record['contract_bundling'] = left_text_and_upper(record['contractbundling'])
    new_record['consolidated_contract'] = left_text_and_upper(record['consolidatedcontract'])
    new_record['country_of_origin'] = validate_country(record['countryoforigin'])
    new_record['place_of_manufacture'] = place_of_manufacture(record['placeofmanufacture'])
    new_record['manufacturing_organization_type'] = left_text_and_upper(record['manufacturingorganizationtype'])
    new_record['agency_id'] = left_text_and_upper(record['agencyid'])
    new_record['agency_name'] = right_text_and_upper(record['agencyid'])
    new_record['piid'] = nullify_text(record['piid'])
    new_record['modification_number'] = nullify_text(record['modnumber'])
    new_record['transaction_number'] = nullify_text(record['transactionnumber'])
    new_record['fiscal_year'] = nullify_text(record['fiscal_year'])
    new_record['idv_agency_id'] = nullify_text(record['idvagencyid'])
    new_record['idv_piid'] = nullify_text(record['idvpiid'])
    new_record['idv_modification_number'] = nullify_text(record['idvmodificationnumber'])
    new_record['solicitation_id'] = nullify_text(record['solicitationid'])
    new_record['extent_competed'] = left_text_and_upper(record['extentcompeted'])
    new_record['reason_not_competed'] = left_text_and_upper(record['reasonnotcompeted'])
    new_record['number_of_offers_received'] = nullify_text(record['numberofoffersreceived'])
    new_record['commercial_item_acquisition_procedures'] = left_text_and_upper(record['commercialitemacquisitionprocedures'])
    new_record['commercial_item_test_program'] = left_text_and_upper(record['commercialitemtestprogram'])
    new_record['small_business_competitiveness_demonstration_program'] = left_text_and_upper(
        record['smallbusinesscompetitivenessdemonstrationprogram'])
    new_record['a76action'] = a76action(record['a76action'])
    new_record['competitive_procedures'] = nullify_text(record['competitiveprocedures'])
    new_record['solicitation_procedures'] = solicitation_procedures(record['solicitationprocedures'])
    new_record['type_of_set_aside'] = left_text_and_upper(record['typeofsetaside'])
    new_record['local_area_set_aside'] = local_area_set_aside(record['localareasetaside'])
    new_record['evaluated_preference'] = left_text_and_upper(record['evaluatedpreference'])
    new_record['fedbizopps'] = nullify_text(record['fedbizopps'])
    new_record['research'] = nullify_text(record['research'])
    new_record['statutory_exception_to_fair_opportunity'] = nullify_text(record['statutoryexceptiontofairopportunity'])
    new_record['contractor_organizational_type'] = nullify_text(record['organizationaltype'].upper())
    new_record['contractor_number_of_employees'] = nullify_text(record['numberofemployees'])
    new_record['contractor_annual_revenue'] = nullify_text(record['annualrevenue'])
    new_record['firm8aflag'] = nullify_text(record['firm8aflag'])
    new_record['hubzoneflag'] = nullify_text(record['hubzoneflag'])
    new_record['sdbflag'] = nullify_text(record['sdbflag'])
    new_record['issbacertifiedsmalldisadvantagedbusiness'] = nullify_text(
        record['issbacertifiedsmalldisadvantagedbusiness'])
    new_record['shelteredworkshopflag'] = nullify_text(record['shelteredworkshopflag'])
    new_record['hbcuflag'] = nullify_text(record['hbcuflag'])
    new_record['educationalinstitutionflag'] = nullify_text(record['educationalinstitutionflag'])
    new_record['womenownedflag'] = nullify_text(record['womenownedflag'])
    new_record['veteranownedflag'] = nullify_text(record['veteranownedflag'])
    new_record['srdvobflag'] = nullify_text(record['srdvobflag'])
    new_record['localgovernmentflag'] = nullify_text(record['localgovernmentflag'])
    new_record['minorityinstitutionflag'] = nullify_text(record['minorityinstitutionflag'])
    new_record['aiobflag'] = nullify_text(record['aiobflag'])
    new_record['stategovernmentflag'] = nullify_text(record['stategovernmentflag'])
    new_record['federalgovernmentflag'] = nullify_text(record['federalgovernmentflag'])
    new_record['minorityownedbusinessflag'] = nullify_text(record['minorityownedbusinessflag'])
    new_record['apaobflag'] = nullify_text(record['apaobflag'])
    new_record['tribalgovernmentflag'] = nullify_text(record['tribalgovernmentflag'])
    new_record['baobflag'] = nullify_text(record['baobflag'])
    new_record['naobflag'] = nullify_text(record['naobflag'])
    new_record['saaobflag'] = nullify_text(record['saaobflag'])
    new_record['nonprofitorganizationflag'] = nullify_text(record['nonprofitorganizationflag'])
    new_record['isothernotforprofitorganization'] = nullify_text(record['isothernotforprofitorganization'])
    new_record['isforprofitorganization'] = nullify_text(record['isforprofitorganization'])
    new_record['isfoundation'] = nullify_text(record['isfoundation'])
    new_record['haobflag'] = nullify_text(record['haobflag'])
    new_record['ishispanicservicinginstitution'] = nullify_text(record['ishispanicservicinginstitution'])
    new_record['emergingsmallbusinessflag'] = nullify_text(record['emergingsmallbusinessflag'])
    new_record['hospitalflag'] = nullify_text(record['hospitalflag'])
    new_record['contractingofficerbusinesssizedetermination'] = left_text_and_upper(
        record['contractingofficerbusinesssizedetermination'])
    new_record['is1862landgrantcollege'] = nullify_text(record['is1862landgrantcollege'])
    new_record['is1890landgrantcollege'] = nullify_text(record['is1890landgrantcollege'])
    new_record['is1994landgrantcollege'] = nullify_text(record['is1994landgrantcollege'])
    new_record['isveterinarycollege'] = nullify_text(record['isveterinarycollege'])
    new_record['isveterinaryhospital'] = nullify_text(record['isveterinaryhospital'])
    new_record['isprivateuniversityorcollege'] = nullify_text(record['isprivateuniversityorcollege'])
    new_record['isschoolofforestry'] = nullify_text(record['isschoolofforestry'])
    new_record['isstatecontrolledinstitutionofhigherlearning'] = nullify_text(
        record['isstatecontrolledinstitutionofhigherlearning'])
    new_record['isserviceprovider'] = nullify_text(record['isserviceprovider'])
    new_record['receivescontracts'] = nullify_text(record['receivescontracts'])
    new_record['receivesgrants'] = nullify_text(record['receivesgrants'])
    new_record['receivescontractsandgrants'] = nullify_text(record['receivescontractsandgrants'])
    new_record['isairportauthority'] = nullify_text(record['isairportauthority'])
    new_record['iscouncilofgovernments'] = nullify_text(record['iscouncilofgovernments'])
    new_record['ishousingauthoritiespublicortribal'] = nullify_text(record['ishousingauthoritiespublicortribal'])
    new_record['isinterstateentity'] = nullify_text(record['isinterstateentity'])
    new_record['isplanningcommission'] = nullify_text(record['isplanningcommission'])
    new_record['isportauthority'] = nullify_text(record['isportauthority'])
    new_record['istransitauthority'] = nullify_text(record['istransitauthority'])
    new_record['issubchapterscorporation'] = nullify_text(record['issubchapterscorporation'])
    new_record['islimitedliabilitycorporation'] = nullify_text(record['islimitedliabilitycorporation'])
    new_record['isforeignownedandlocated'] = nullify_text(record['isforeignownedandlocated'])
    new_record['isarchitectureandengineering'] = nullify_text(record['isarchitectureandengineering'])
    new_record['isdotcertifieddisadvantagedbusinessenterprise'] = is_dot_certified(
        record['isdotcertifieddisadvantagedbusinessenterprise'])
    new_record['iscitylocalgovernment'] = nullify_text(record['iscitylocalgovernment'])
    new_record['iscommunitydevelopedcorporationownedfirm'] = nullify_text(
        record['iscommunitydevelopedcorporationownedfirm'])
    new_record['iscommunitydevelopmentcorporation'] = nullify_text(record['iscommunitydevelopmentcorporation'])
    new_record['isconstructionfirm'] = nullify_text(record['isconstructionfirm'])
    new_record['ismanufacturerofgoods'] = nullify_text(record['ismanufacturerofgoods'])
    new_record['iscorporateentitynottaxexempt'] = nullify_text(record['iscorporateentitynottaxexempt'])
    new_record['iscountylocalgovernment'] = nullify_text(record['iscountylocalgovernment'])
    new_record['isdomesticshelter'] = nullify_text(record['isdomesticshelter'])
    new_record['isfederalgovernmentagency'] = nullify_text(record['isfederalgovernmentagency'])
    new_record['isfederallyfundedresearchanddevelopmentcorp'] = nullify_text(
        record['isfederallyfundedresearchanddevelopmentcorp'])
    new_record['isforeigngovernment'] = nullify_text(record['isforeigngovernment'])
    new_record['isindiantribe'] = nullify_text(record['isindiantribe'])
    new_record['isintermunicipallocalgovernment'] = nullify_text(record['isintermunicipallocalgovernment'])
    new_record['isinternationalorganization'] = nullify_text(record['isinternationalorganization'])
    new_record['islaborsurplusareafirm'] = nullify_text(record['islaborsurplusareafirm'])
    new_record['islocalgovernmentowned'] = nullify_text(record['islocalgovernmentowned'])
    new_record['ismunicipalitylocalgovernment'] = nullify_text(record['ismunicipalitylocalgovernment'])
    new_record['isnativehawaiianownedorganizationorfirm'] = nullify_text(
        record['isnativehawaiianownedorganizationorfirm'])
    new_record['isotherbusinessororganization'] = nullify_text(record['isotherbusinessororganization'])
    new_record['isotherminorityowned'] = nullify_text(record['isotherminorityowned'])
    new_record['ispartnershiporlimitedliabilitypartnership'] = nullify_text(
        record['ispartnershiporlimitedliabilitypartnership'])
    new_record['isschooldistrictlocalgovernment'] = nullify_text(record['isschooldistrictlocalgovernment'])
    new_record['issmallagriculturalcooperative'] = nullify_text(record['issmallagriculturalcooperative'])
    new_record['issoleproprietorship'] = nullify_text(record['issoleproprietorship'])
    new_record['istownshiplocalgovernment'] = nullify_text(record['istownshiplocalgovernment'])
    new_record['istriballyownedfirm'] = nullify_text(record['istriballyownedfirm'])
    new_record['istribalcollege'] = nullify_text(record['istribalcollege'])
    new_record['isalaskannativeownedcorporationorfirm'] = nullify_text(record['isalaskannativeownedcorporationorfirm'])
    new_record['iscorporateentitytaxexempt'] = nullify_text(record['iscorporateentitytaxexempt'])
    new_record['iswomenownedsmallbusiness'] = nullify_text(record['iswomenownedsmallbusiness'])
    new_record['isecondisadvwomenownedsmallbusiness'] = nullify_text(record['isecondisadvwomenownedsmallbusiness'])
    new_record['isjointventurewomenownedsmallbusiness'] = nullify_text(record['isjointventurewomenownedsmallbusiness'])
    new_record['isjointventureecondisadvwomenownedsmallbusiness'] = nullify_text(
        record['isjointventureecondisadvwomenownedsmallbusiness'])
    new_record['walsh_healy_act'] = left_text_and_upper(record['walshhealyact'])
    new_record['service_contract_act'] = left_text_and_upper(record['servicecontractact'])
    new_record['davis_bacon_act'] = left_text_and_upper(record['davisbaconact'])
    new_record['clinger_cohen_act'] = left_text_and_upper(record['clingercohenact'])
    new_record['other_statutory_authority'] = left_text_and_upper(record['otherstatutoryauthority'])
    new_record['prime_awardee_executive1'] = nullify_text(record['prime_awardee_executive1'])
    new_record['prime_awardee_executive1_compensation'] = nullify_text(record['prime_awardee_executive1_compensation'])
    new_record['prime_awardee_executive2'] = nullify_text(record['prime_awardee_executive2'])
    new_record['prime_awardee_executive2_compensation'] = nullify_text(record['prime_awardee_executive2_compensation'])
    new_record['prime_awardee_executive3'] = nullify_text(record['prime_awardee_executive3'])
    new_record['prime_awardee_executive3_compensation'] = nullify_text(record['prime_awardee_executive3_compensation'])
    new_record['prime_awardee_executive4'] = nullify_text(record['prime_awardee_executive4'])
    new_record['prime_awardee_executive4_compensation'] = nullify_text(record['prime_awardee_executive4_compensation'])
    new_record['prime_awardee_executive5'] = nullify_text(record['prime_awardee_executive5'])
    new_record['prime_awardee_executive5_compensation'] = nullify_text(record['prime_awardee_executive5_compensation'])
    new_record['interagency_contracting_authority'] = left_text_and_upper(record['interagencycontractingauthority'])
    return new_record


# obtain the args provided by the user
parser = argparse.ArgumentParser()
parser.add_argument('csv_files',
                    help="Path to CSV files from usaspending.gov.")
parser.add_argument('destination',
                    help="File with the cleaned data.")
args = parser.parse_args()

print(strftime("%Y-%m-%d %H:%M:%S"))

with open(args.destination, 'wb') as csv_out:
    writer = csv.DictWriter(csv_out, fieldnames=constants.NEW_FIELDS)
    writer.writeheader()
    for filename in glob.glob(args.csv_files):
        print (filename)
        with open(filename, 'rb') as csv_in:
            for row in csv.DictReader(csv_in):
                writer.writerow(transform_row(row))

print('Done!')

print(strftime("%Y-%m-%d %H:%M:%S"))