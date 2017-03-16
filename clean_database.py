#!/usr/bin/env python
# -*- coding: utf-8 -*-

import argparse
import glob
import csv
import re
from time import strftime
import os
import errno

#
# Some constants
#


STATE_CODES = ('98', 'AA', 'AE', 'AK', 'AL', 'AP', 'AR', 'AS',
               'AZ', 'CA', 'CO', 'CT', 'DC', 'DE', 'FL', 'FM',
               'GA', 'GU', 'HI', 'IA', 'ID', 'IL', 'IN', 'KS',
               'KY', 'LA', 'MA', 'MD', 'ME', 'MH', 'MI', 'MN',
               'MO', 'MP', 'MS', 'MT', 'NC', 'ND', 'NE', 'NH',
               'NJ', 'NM', 'NV', 'NY', 'OH', 'OK', 'OR', 'PA',
               'PR', 'PW', 'RI', 'SC', 'SD', 'TN', 'TX', 'UM',
               'UT', 'VA', 'VI', 'VT', 'WA', 'WI', 'WV', 'WY')

STATES = {
    'NONDISTRIBUTED': '98',
    'ARMED FORCES - EUROPE': 'AE',
    'ALASKA': 'AK',
    'ALABAMA': 'AL',
    'ARKANSAS': 'AR',
    'AMERICAN SAMOA': 'AS',
    'ARIZONA': 'AZ',
    'BRITISH COLUMBIA (CANADA)': 'BC',
    'CALIFORNIA': 'CA',
    'COLORADO': 'CO',
    'CONNECTICUT': 'CT',
    'DISTRICT OF COLUMBIA': 'DC',
    'DELAWARE': 'DE',
    'FLORIDA': 'FL',
    'GEORGIA': 'GA',
    'GABON': 'GB',
    'GERMANY': 'GM',
    'GUAM': 'GU',
    'HAWAII': 'HI',
    'IOWA': 'IA',
    'IDAHO': 'ID',
    'ILLINOIS': 'IL',
    'INDIANA': 'IN',
    'JAPAN': 'JA',
    'KANSAS': 'KS',
    'KENTUCKY': 'KY',
    'LOUISIANA': 'LA',
    'MASSACHUSETTS': 'MA',
    'MARYLAND': 'MD',
    'MAINE': 'ME',
    'MARSHALL ISLANDS': 'MH',
    'MICHIGAN': 'MI',
    'MINNESOTA': 'MN',
    'MISSOURI': 'MO',
    'NORTHERN MARIANA ISLANDS': 'MP',
    'MISSISSIPPI': 'MS',
    'MONTANA': 'MT',
    'NORTH CAROLINA': 'NC',
    'NORTH DAKOTA': 'ND',
    'NEBRASKA': 'NE',
    'NEW HAMPSHIRE': 'NH',
    'NEW JERSEY': 'NJ',
    'NEW MEXICO': 'NM',
    'NEVADA': 'NV',
    'NEW YORK': 'NY',
    'OHIO': 'OH',
    'OKLAHOMA': 'OK',
    'OREGON': 'OR',
    'PENNSYLVANIA': 'PA',
    'PUERTO RICO': 'PR',
    'PALAU': 'PW',
    'QUEBEC (CANADA)': 'QC',
    'RHODE ISLAND': 'RI',
    'SOUTH CAROLINA': 'SC',
    'SOUTH DAKOTA': 'SD',
    'TENNESSEE': 'TN',
    'TEXAS': 'TX',
    'UNITED KINGDOM': 'UK',
    'U.S. MINOR OUTLYING ISLANDS': 'UM',
    'INVALID ENTRY (usaspending.gov error)': 'US',
    'UTAH': 'UT',
    'VIRGINIA': 'VA',
    'VIRGIN ISLANDS OF THE U.S.': 'VI',
    'VERMONT': 'VT',
    'WASHINGTON': 'WA',
    'WISCONSIN': 'WI',
    'WEST VIRGINIA': 'WV',
    'WYOMING': 'WY'
}

COUNTRIES = {
    "AFGHANISTAN": "AFG",
    "ALBANIA": "ALB",
    "ALGERIA": "DZA",
    "AMERICAN SAMOA": "ASM",
    "AMERICAN SAMOA [UNITED STATES]": "ASM",
    "ANDORRA": "AND",
    "ANGOLA": "AGO",
    "ANGUILLA": "AIA",
    "ANGUILLA [UNITED KINGDOM]": "AIA",
    "ANTARCTICA": "ATA",
    "ANTIGUA AND BARBUDA": "ATG",
    "ARGENTINA": "ARG",
    "ARMENIA": "ARM",
    "ARUBA": "ABW",
    "ARUBA [NETHERLANDS]": "ABW",
    "AUSTRALIA": "AUS",
    "AUSTRIA": "AUT",
    "AZERBAIJAN": "AZE",
    "BAHAMAS": "BHS",
    "BAHAMAS,THE": "BHS",
    "BAHRAIN": "BHR",
    "BANGLADESH": "BGD",
    "BARBADOS": "BRB",
    "BELARUS": "BLR",
    "BELGIUM": "BEL",
    "BELIZE": "BLZ",
    "BENIN": "BEN",
    "BERMUDA": "BMU",
    "BERMUDA [UNITED KINGDOM]": "BMU",
    "BHUTAN": "BTN",
    "BOLIVIA": "BOL",
    "BONAIRE, SINT EUSTATIUS AND SABA": "BES",
    "BOSNIA AND HERZEGOVINA": "BIH",
    "BOTSWANA": "BWA",
    "BRAZIL": "BRA",
    "BRITISH INDIAN OCEAN TERRITORY": "IOT",
    "BRITISH VIRGIN ISLANDS [UNITED KINGDOM]": "VGB",
    "BRUNEI": "BRN",
    "BRUNEI DARUSSALAM": "BRN",
    "BULGARIA": "BGR",
    "BURKINA FASO": "BFA",
    "BURUNDI": "BDI",
    "CABO VERDE": "CPV",
    "CAMBODIA": "KHM",
    "CAMEROON": "CMR",
    "CANADA": "CAN",
    "CÃ”TE D'IVOIRE": "CIV",
    "CAYMAN ISLANDS": "CYM",
    "CAYMAN ISLANDS [UNITED KINGDOM]": "CYM",
    "CENTRAL AFRICAN REPUBLIC": "CAF",
    "CHAD": "TCD",
    "CHILE": "CHL",
    "CHINA": "CHN",
    "CHRISTMAS ISLAND": "CXR",
    "COCOS ISLANDS": "CCK",
    "COLOMBIA": "COL",
    "COMOROS": "COM",
    "CONGO": "COG",
    "CONGO, DEMOCRATIC REPUBLIC OF THE": "COD",
    "CONGO,DEMOCRATIC REPUBLIC OF THE (KINSHASA)": "COD",
    "COOK ISLANDS": "COK",
    "COSTA RICA": "CRI",
    "COTE DIVOIRE": "CIV",
    "CÔTE D'IVOIRE": "CIV",
    "CROATIA": "HRV",
    "CUBA": "CUB",
    "CURAÃ‡AO": "CUW",
    "CURAÇAO": "CUW",
    "CYPRUS": "CYP",
    "CZECH REPUBLIC": "CZE",
    "DENMARK": "DNK",
    "DIEGO GARCIA": "DGA",
    "DJIBOUTI": "DJI",
    "DOMINICA": "DMA",
    "DOMINICAN REPUBLIC": "DOM",
    "ECUADOR": "ECU",
    "EGYPT": "EGY",
    "EL SALVADOR": "SLV",
    "EQUATORIAL GUINEA": "GNQ",
    "ERITREA": "ERI",
    "ESTONIA": "EST",
    "ETHIOPIA": "ETH",
    "FALKLAND ISLANDS (MALVINAS)": "FLK",
    "FAROE ISLANDS": "FRO",
    "FIJI": "FJI",
    "FINLAND": "FIN",
    "FRANCE": "FRA",
    "FRENCH GUIANA": "GUF",
    "FRENCH POLYNESIA": "PYF",
    "FRENCH SOUTHERN TERRITORIES": "ATF",
    "GABON": "GAB",
    "GAMBIA": "GMB",
    "GAMBIA,THE": "GMB",
    "GAZA STRIP": "XGZ",
    "GEORGIA": "GEO",
    "GERMAN DEMOCRATIC REPUBLIC": "DDR",
    "GERMANY": "DEU",
    "GHANA": "GHA",
    "GIBRALTAR": "GIB",
    "GIBRALTAR [UNITED KINGDOM]": "GIB",
    "GREECE": "GRC",
    "GREENLAND": "GRL",
    "GREENLAND [DENMARK]": "GRL",
    "GRENADA": "GRD",
    "GUADELOUPE": "GLP",
    "GUAM": "GUM",
    "GUAM [UNITED STATES]": "GUM",
    "GUATEMALA": "GTM",
    "GUERNSEY": "GGY",
    "GUINEA": "GIN",
    "GUINEA-BISSAU": "GNB",
    "GUYANA": "GUY",
    "HAITI": "HTI",
    "HEARD ISLAND AND MCDONALD ISLANDS": "HMD",
    "HOLY SEE": "VAT",
    "HONDURAS": "HND",
    "HONG KONG": "HKG",
    "HUNGARY": "HUN",
    "ICELAND": "ISL",
    "INDIA": "IND",
    "INDONESIA": "IDN",
    "IRAN": "IRN",
    "IRAN (ISLAMIC REPUBLIC OF)": "IRN",
    "IRAQ": "IRQ",
    "IRELAND": "IRL",
    "ISRAEL": "ISR",
    "ITALY": "ITA",
    "JAMAICA": "JAM",
    "JAPAN": "JPN",
    "JERSEY": "JEY",
    "JORDAN": "JOR",
    "KAZAKHSTAN": "KAZ",
    "KENYA": "KEN",
    "KIRIBATI": "KIR",
    "KOREA ( DEMOCRATIC PEOPLE'S REPUBLIC OF)": "PRK",
    "KOREA, REPUBLIC OF": "KOR",
    "KOSOVO": "XKS",
    "KUWAIT": "KWT",
    "KYRGYZSTAN": "KGZ",
    "LAO PEOPLE'S DEMOCRATIC REPUBLIC": "LAO",
    "LAOS": "LAO",
    "LATVIA": "LVA",
    "LEBANON": "LBN",
    "LESOTHO": "LSO",
    "LIBERIA": "LBR",
    "LIBYA": "LBY",
    "LIECHTENSTEIN": "LIE",
    "LITHUANIA": "LTU",
    "LUXEMBOURG": "LUX",
    "MACAO": "MAC",
    "MACEDONIA": "MKD",
    "MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF": "MKD",
    "MADAGASCAR": "MDG",
    "MALAWI": "MWI",
    "MALAYSIA": "MYS",
    "MALDIVES": "MDV",
    "MALI": "MLI",
    "MALTA": "MLT",
    "MARSHALL ISLANDS": "MHL",
    "MARTINIQUE": "MTQ",
    "MAURITANIA": "MRT",
    "MAURITIUS": "MUS",
    "MAYOTTE": "MYT",
    "MEXICO": "MEX",
    "MICRONESIA (FEDERATED STATES OF)": "FSM",
    "MICRONESIA,FEDERATED STATES OF": "FSM",
    "MOLDOVA": "MDA",
    "MOLDOVA, REPUBLIC OF": "MDA",
    "MONACO": "MCO",
    "MONGOLIA": "MNG",
    "MONTENEGRO": "MNE",
    "MONTSERRAT": "MSR",
    "MONTSERRAT [UNITED KINGDOM]": "MSR",
    "MOROCCO": "MAR",
    "MOZAMBIQUE": "MOZ",
    "MYANMAR": "MMR",
    "NAMIBIA": "NAM",
    "NAURU": "NRU",
    "NEPAL": "NPL",
    "NETHERLANDS": "NLD",
    "NETHERLANDS ANTILLES": "ANT",
    "NETHERLANDS ANTILLES [NETHERLANDS]": "ANT",
    "NEW CALEDONIA": "NCL",
    "NEW CALEDONIA [FRANCE]": "NCL",
    "NEW ZEALAND": "NZL",
    "NICARAGUA": "NIC",
    "NIGER": "NER",
    "NIGERIA": "NGA",
    "NIUE": "NIU",
    "NJUNI": "JIB",
    "NONDISTRIBUTED": "ZZZ",
    "NORTHERN MARIANA ISLANDS": "MNP",
    "NORTHERN MARIANA ISLANDS [UNITED STATES]": "MNP",
    "NORWAY": "NOR",
    "OMAN": "OMN",
    "PAKISTAN": "PAK",
    "PALAU": "PLW",
    "PANAMA": "PAN",
    "PAPUA NEW GUINEA": "PNG",
    "PARAGUAY": "PRY",
    "PERU": "PER",
    "PHILIPPINES": "PHL",
    "POLAND": "POL",
    "PORTUGAL": "PRT",
    "PUERTO RICO": "PRI",
    "PUERTO RICO [UNITED STATES]": "PRI",
    "QATAR": "QAT",
    "ROMANIA": "ROU",
    "RUSSIA": "RUS",
    "RUSSIAN FEDERATION": "RUS",
    "RWANDA": "RWA",
    "SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA": "SHN",
    "SAINT KITTS AND NEVIS": "KNA",
    "SAINT LUCIA": "LCA",
    "SAINT PIERRE AND MIQUELON": "SPM",
    "SAINT VINCENT AND THE GRENADINES": "VCT",
    "SAMOA": "WSM",
    "SAN MARINO": "SMR",
    "SAO TOME AND PRINCIPE": "STP",
    "SAUDI ARABIA": "SAU",
    "SENEGAL": "SEN",
    "SERBIA": "SRB",
    "SERBIA AND MONTENEGRO": "SCG",
    "SEYCHELLES": "SYC",
    "SIERRA LEONE": "SLE",
    "SINGAPORE": "SGP",
    "SLOVAKIA": "SVK",
    "SLOVENIA": "SVN",
    "SOLOMON ISLANDS": "SLB",
    "SOMALIA": "SOM",
    "SOUTH AFRICA": "ZAF",
    "SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS": "SGS",
    "SOUTH KOREA": "KOR",
    "SOUTH SUDAN": "SSD",
    "SPAIN": "ESP",
    "SPRATLY ISLANDS": "XSP",
    "SRI LANKA": "LKA",
    "SUDAN": "SDN",
    "SURINAME": "SUR",
    "SVALBARD": "XSV",
    "SWAZILAND": "SWZ",
    "SWEDEN": "SWE",
    "SWITZERLAND": "CHE",
    "SYRIA": "SYR",
    "TAIWAN, PROVINCE OF CHINA": "TWN",
    "TAIWAN,PROVINCE OF CHINA": "TWN",
    "TAJIKISTAN": "TJK",
    "TANZANIA": "TZA",
    "TANZANIA, UNITED REPUBLIC OF": "TZA",
    "THAILAND": "THA",
    "TIMOR-LESTE": "TLS",
    "TOGO": "TGO",
    "TONGA": "TON",
    "TRINIDAD AND TOBAGO": "TTO",
    "TUNISIA": "TUN",
    "TURKEY": "TUR",
    "TURKMENISTAN": "TKM",
    "TURKS AND CAICOS ISLANDS": "TCA",
    "TUVALU": "TUV",
    "UGANDA": "UGA",
    "UKRAINE": "UKR",
    "UNITED ARAB EMIRATES": "ARE",
    "UNITED KINGDOM": "GBR",
    "UNITED KINGDOM OF GREAT BRITAIN AND NORTHERN": "GBR",
    "UNITED KINGDOM OF GREAT BRITAIN AND NORTHERN  IRELAND": "GBR",
    "UNITED STATES": "USA",
    "UNITED STATES MINOR OUTLYING ISLANDS": "UMI",
    "UNITED STATES OF AMERICA": "USA",
    "URUGUAY": "URY",
    "UZBEKISTAN": "UZB",
    "VANUATU": "VUT",
    "VENEZUELA": "VEN",
    "VENEZUELA (BOLIVARIAN REPUBLIC OF)": "VEN",
    "VIETNAM": "VNM",
    "VIET NAM": "VNM",
    "VIRGIN ISLANDS (BRITISH)": "VGB",
    "VIRGIN ISLANDS [UNITED STATES]": "VIR",
    "VIRGIN ISLANDS (U.S.)": "VIR",
    "WEST BANK": "XWB",
    "WESTERN SAHARA *": "ESH",
    "YEMEN": "YEM",
    "YUGOSLAVIA": "YUG",
    "ZAMBIA": "ZMB",
    "ZIMBABWE": "ZWE"
}

OLD_FIELDS = [
    'unique_transaction_id',
    'last_modified_date',
    'transaction_status',
    'dollarsobligated',
    'baseandexercisedoptionsvalue',
    'baseandalloptionsvalue',
    'maj_agency_cat',
    'mod_agency',
    'maj_fund_agency_cat',
    'contractingofficeagencyid',
    'contractingofficeid',
    'fundingrequestingagencyid',
    'fundingrequestingofficeid',
    'fundedbyforeignentity',
    'signeddate',
    'effectivedate',
    'currentcompletiondate',
    'ultimatecompletiondate',
    'lastdatetoorder',
    'contractactiontype',
    'reasonformodification',
    'typeofcontractpricing',
    'priceevaluationpercentdifference',
    'subcontractplan',
    'lettercontract',
    'multiyearcontract',
    'performancebasedservicecontract',
    'majorprogramcode',
    'contingencyhumanitarianpeacekeepingoperation',
    'contractfinancing',
    'costorpricingdata',
    'costaccountingstandardsclause',
    'descriptionofcontractrequirement',
    'purchasecardaspaymentmethod',
    'numberofactions',
    'nationalinterestactioncode',
    'progsourceagency',
    'progsourceaccount',
    'progsourcesubacct',
    'account_title',
    'rec_flag',
    'typeofidc',
    'multipleorsingleawardidc',
    'programacronym',
    'vendorname',
    'vendoralternatename',
    'vendorlegalorganizationname',
    'vendordoingasbusinessname',
    'divisionname',
    'divisionnumberorofficecode',
    'vendorenabled',
    'vendorlocationdisableflag',
    'ccrexception',
    'streetaddress',
    'streetaddress2',
    'streetaddress3',
    'city',
    'state',
    'zipcode',
    'vendorcountrycode',
    'vendor_state_code',
    'vendor_cd',
    'congressionaldistrict',
    'vendorsitecode',
    'vendoralternatesitecode',
    'dunsnumber',
    'parentdunsnumber',
    'phoneno',
    'faxno',
    'registrationdate',
    'renewaldate',
    'mod_parent',
    'locationcode',
    'statecode',
    'PlaceofPerformanceCity',
    'pop_state_code',
    'placeofperformancecountrycode',
    'placeofperformancezipcode',
    'pop_cd',
    'placeofperformancecongressionaldistrict',
    'psc_cat',
    'productorservicecode',
    'systemequipmentcode',
    'claimantprogramcode',
    'principalnaicscode',
    'informationtechnologycommercialitemcategory',
    'gfe_gfp',
    'useofepadesignatedproducts',
    'recoveredmaterialclauses',
    'seatransportation',
    'contractbundling',
    'consolidatedcontract',
    'countryoforigin',
    'placeofmanufacture',
    'manufacturingorganizationtype',
    'agencyid',
    'piid',
    'modnumber',
    'transactionnumber',
    'fiscal_year',
    'idvagencyid',
    'idvpiid',
    'idvmodificationnumber',
    'solicitationid',
    'extentcompeted',
    'reasonnotcompeted',
    'numberofoffersreceived',
    'commercialitemacquisitionprocedures',
    'commercialitemtestprogram',
    'smallbusinesscompetitivenessdemonstrationprogram',
    'a76action',
    'competitiveprocedures',
    'solicitationprocedures',
    'typeofsetaside',
    'localareasetaside',
    'evaluatedpreference',
    'fedbizopps',
    'research',
    'statutoryexceptiontofairopportunity',
    'organizationaltype',
    'numberofemployees',
    'annualrevenue',
    'firm8aflag',
    'hubzoneflag',
    'sdbflag',
    'issbacertifiedsmalldisadvantagedbusiness',
    'shelteredworkshopflag',
    'hbcuflag',
    'educationalinstitutionflag',
    'womenownedflag',
    'veteranownedflag',
    'srdvobflag',
    'localgovernmentflag',
    'minorityinstitutionflag',
    'aiobflag',
    'stategovernmentflag',
    'federalgovernmentflag',
    'minorityownedbusinessflag',
    'apaobflag',
    'tribalgovernmentflag',
    'baobflag',
    'naobflag',
    'saaobflag',
    'nonprofitorganizationflag',
    'isothernotforprofitorganization',
    'isforprofitorganization',
    'isfoundation',
    'haobflag',
    'ishispanicservicinginstitution',
    'emergingsmallbusinessflag',
    'hospitalflag',
    'contractingofficerbusinesssizedetermination',
    'is1862landgrantcollege',
    'is1890landgrantcollege',
    'is1994landgrantcollege',
    'isveterinarycollege',
    'isveterinaryhospital',
    'isprivateuniversityorcollege',
    'isschoolofforestry',
    'isstatecontrolledinstitutionofhigherlearning',
    'isserviceprovider',
    'receivescontracts',
    'receivesgrants',
    'receivescontractsandgrants',
    'isairportauthority',
    'iscouncilofgovernments',
    'ishousingauthoritiespublicortribal',
    'isinterstateentity',
    'isplanningcommission',
    'isportauthority',
    'istransitauthority',
    'issubchapterscorporation',
    'islimitedliabilitycorporation',
    'isforeignownedandlocated',
    'isarchitectureandengineering',
    'isdotcertifieddisadvantagedbusinessenterprise',
    'iscitylocalgovernment',
    'iscommunitydevelopedcorporationownedfirm',
    'iscommunitydevelopmentcorporation',
    'isconstructionfirm',
    'ismanufacturerofgoods',
    'iscorporateentitynottaxexempt',
    'iscountylocalgovernment',
    'isdomesticshelter',
    'isfederalgovernmentagency',
    'isfederallyfundedresearchanddevelopmentcorp',
    'isforeigngovernment',
    'isindiantribe',
    'isintermunicipallocalgovernment',
    'isinternationalorganization',
    'islaborsurplusareafirm',
    'islocalgovernmentowned',
    'ismunicipalitylocalgovernment',
    'isnativehawaiianownedorganizationorfirm',
    'isotherbusinessororganization',
    'isotherminorityowned',
    'ispartnershiporlimitedliabilitypartnership',
    'isschooldistrictlocalgovernment',
    'issmallagriculturalcooperative',
    'issoleproprietorship',
    'istownshiplocalgovernment',
    'istriballyownedfirm',
    'istribalcollege',
    'isalaskannativeownedcorporationorfirm',
    'iscorporateentitytaxexempt',
    'iswomenownedsmallbusiness',
    'isecondisadvwomenownedsmallbusiness',
    'isjointventurewomenownedsmallbusiness',
    'isjointventureecondisadvwomenownedsmallbusiness',
    'walshhealyact',
    'servicecontractact',
    'davisbaconact',
    'clingercohenact',
    'otherstatutoryauthority',
    'prime_awardee_executive1',
    'prime_awardee_executive1_compensation',
    'prime_awardee_executive2',
    'prime_awardee_executive2_compensation',
    'prime_awardee_executive3',
    'prime_awardee_executive3_compensation',
    'prime_awardee_executive4',
    'prime_awardee_executive4_compensation',
    'prime_awardee_executive5',
    'prime_awardee_executive5_compensation',
    'interagencycontractingauthority',
]

NEW_FIELDS = [
    'unique_transaction_id',
    'last_modified_date',
    'transaction_status',
    'dollars_obligated',
    'base_and_exercised_options_value',
    'base_and_all_options_value',
    'contracting_department_id',
    'contracting_department_name',
    'contracting_agency_id',
    'contracting_agency_name',
    'contracting_agency_id_redundant',
    'contracting_agency_name_redundant',
    'contracting_office_id',
    'contracting_office_name',
    'funding_department_id',
    'funding_department_name',
    'funding_agency_id',
    'funding_agency_name',
    'funding_office_id',
    'funding_office_name',
    'funded_by_foreign_entity',
    'signed_date',
    'effective_date',
    'current_completion_date',
    'ultimate_completion_date',
    'last_date_to_order',
    'contract_action_type',
    'reason_for_modification',
    'type_of_contract_pricing',
    'price_evaluation_percent_difference',
    'subcontract_plan',
    'letter_contract',
    'multiyear_contract',
    'performance_based_service_contract',
    'major_program_code',
    'contingency_humanitarian_peacekeeping_operation',
    'contract_financing',
    'cost_or_pricing_data',
    'cost_accounting_standards_clause',
    'descriptionofcontractrequirement',
    'purchase_card_as_payment_method',
    'number_of_actions',
    'national_interest_action',
    'prog_source_agency',
    'prog_source_account',
    'prog_source_subacct',
    'account_title',
    'recovery_flag',
    'type_of_idc',
    'multiple_or_single_award_idc',
    'program_acronym',
    'contractor_name',
    'contractor_alternate_name',
    'contractor_legal_organization_name',
    'contractor_doing_as_business_name',
    'contractor_division_name',
    'contractor_division_number_or_office_code',
    'contractor_enabled',
    'contractor_location_disable_flag',
    'contractor_ccr_exception',
    'contractor_street_address_1',
    'contractor_street_address_2',
    'contractor_street_address_3',
    'contractor_city',
    'contractor_state',
    'contractor_other_location_info',
    'contractor_state_other_info_redundant',
    'contractor_zip_code',
    'contractor_country',
    'contractor_congressional_district',
    'contractor_congressional_district_redundant',
    'contractor_site_code',
    'contractor_alternate_site_code',
    'contractor_duns_number',
    'contractor_parent_duns_number',
    'contractor_phone_number',
    'contractor_fax_number',
    'contractor_registration_date',
    'contractor_renewal_date',
    'contractor_parent_name',
    'location_code',
    'place_of_performance_city',
    'place_of_performance_state',
    'place_of_performance_state_redundant',
    'place_of_performance_country',
    'place_of_performance_zip_code',
    'place_of_performance_congressional_district',
    'place_of_performance_congressional_district_redundant',
    'product_or_service_category',
    'product_or_service_code',
    'system_or_equipment_code',
    'system_or_equipment_description',
    'claimant_program',
    'naics',
    'information_technology_commercial_item_category',
    'gfe_gfp',
    'use_of_epa_designated_products',
    'recovered_material_clauses',
    'sea_transportation',
    'contract_bundling',
    'consolidated_contract',
    'country_of_origin',
    'place_of_manufacture',
    'manufacturing_organization_type',
    'agency_id',
    'agency_name',
    'piid',
    'modification_number',
    'transaction_number',
    'fiscal_year',
    'idv_agency_id',
    'idv_piid',
    'idv_modification_number',
    'solicitation_id',
    'extent_competed',
    'reason_not_competed',
    'number_of_offers_received',
    'commercial_item_acquisition_procedures',
    'commercial_item_test_program',
    'small_business_competitiveness_demonstration_program',
    'a76action',
    'competitive_procedures',
    'solicitation_procedures',
    'type_of_set_aside',
    'local_area_set_aside',
    'evaluated_preference',
    'fedbizopps',
    'research',
    'statutory_exception_to_fair_opportunity',
    'contractor_organizational_type',
    'contractor_number_of_employees',
    'contractor_annual_revenue',
    'firm8aflag',
    'hubzoneflag',
    'sdbflag',
    'issbacertifiedsmalldisadvantagedbusiness',
    'shelteredworkshopflag',
    'hbcuflag',
    'educationalinstitutionflag',
    'womenownedflag',
    'veteranownedflag',
    'srdvobflag',
    'localgovernmentflag',
    'minorityinstitutionflag',
    'aiobflag',
    'stategovernmentflag',
    'federalgovernmentflag',
    'minorityownedbusinessflag',
    'apaobflag',
    'tribalgovernmentflag',
    'baobflag',
    'naobflag',
    'saaobflag',
    'nonprofitorganizationflag',
    'isothernotforprofitorganization',
    'isforprofitorganization',
    'isfoundation',
    'haobflag',
    'ishispanicservicinginstitution',
    'emergingsmallbusinessflag',
    'hospitalflag',
    'contractingofficerbusinesssizedetermination',
    'is1862landgrantcollege',
    'is1890landgrantcollege',
    'is1994landgrantcollege',
    'isveterinarycollege',
    'isveterinaryhospital',
    'isprivateuniversityorcollege',
    'isschoolofforestry',
    'isstatecontrolledinstitutionofhigherlearning',
    'isserviceprovider',
    'receivescontracts',
    'receivesgrants',
    'receivescontractsandgrants',
    'isairportauthority',
    'iscouncilofgovernments',
    'ishousingauthoritiespublicortribal',
    'isinterstateentity',
    'isplanningcommission',
    'isportauthority',
    'istransitauthority',
    'issubchapterscorporation',
    'islimitedliabilitycorporation',
    'isforeignownedandlocated',
    'isarchitectureandengineering',
    'isdotcertifieddisadvantagedbusinessenterprise',
    'iscitylocalgovernment',
    'iscommunitydevelopedcorporationownedfirm',
    'iscommunitydevelopmentcorporation',
    'isconstructionfirm',
    'ismanufacturerofgoods',
    'iscorporateentitynottaxexempt',
    'iscountylocalgovernment',
    'isdomesticshelter',
    'isfederalgovernmentagency',
    'isfederallyfundedresearchanddevelopmentcorp',
    'isforeigngovernment',
    'isindiantribe',
    'isintermunicipallocalgovernment',
    'isinternationalorganization',
    'islaborsurplusareafirm',
    'islocalgovernmentowned',
    'ismunicipalitylocalgovernment',
    'isnativehawaiianownedorganizationorfirm',
    'isotherbusinessororganization',
    'isotherminorityowned',
    'ispartnershiporlimitedliabilitypartnership',
    'isschooldistrictlocalgovernment',
    'issmallagriculturalcooperative',
    'issoleproprietorship',
    'istownshiplocalgovernment',
    'istriballyownedfirm',
    'istribalcollege',
    'isalaskannativeownedcorporationorfirm',
    'iscorporateentitytaxexempt',
    'iswomenownedsmallbusiness',
    'isecondisadvwomenownedsmallbusiness',
    'isjointventurewomenownedsmallbusiness',
    'isjointventureecondisadvwomenownedsmallbusiness',
    'walsh_healy_act',
    'service_contract_act',
    'davis_bacon_act',
    'clinger_cohen_act',
    'other_statutory_authority',
    'prime_awardee_executive1',
    'prime_awardee_executive1_compensation',
    'prime_awardee_executive2',
    'prime_awardee_executive2_compensation',
    'prime_awardee_executive3',
    'prime_awardee_executive3_compensation',
    'prime_awardee_executive4',
    'prime_awardee_executive4_compensation',
    'prime_awardee_executive5',
    'prime_awardee_executive5_compensation',
    'interagency_contracting_authority'
]

#
# Generic functions:
#

def nullify_text(text):
    if text is not None:
        text = text.strip()
        if (text == '') or not bool(re.search('[A-Za-z0-9]', text)):
            text = None
    return text

def upper_case(text):
    if text is not None:
        return text.upper()
    else:
        return None

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


def validate_state(text):
    text = nullify_text(text)
    if text is not None:
        left_text = left_text_and_upper(text)
        if left_text is None:
            left_text = ''
        if len(left_text) == 2:
            if left_text not in STATE_CODES:
                left_text = 'XX'
            text = left_text
        else:
            right_text = right_text_and_upper(text)
            text = STATES.get(right_text, text)
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
                'US': 'USA',
                'KOS': 'XKS',
                'SJM': 'XSV',
                'PW': 'PLW',
                'WAK': 'UMI'
            }.get(left_text, left_text)
            if (text is not None) and (text not in COUNTRIES.values()):
                print('Warning! Unknown country code: "{}". Code will be replaced by "XXX".'.format(text))
                text = 'XXX'
        else:
            text = COUNTRIES.get(left_text, text)
            if len(text) > 3:
                print('Warning! Unknown country: "{}"'.format(text))
    return text

#
# Specific functions:
#

def contractor_state(text):
    text = nullify_text(text)
    if text in STATE_CODES:
        return text
    else:
        return STATES.get(text, None)

def contractor_other_location_info(text):
    text = nullify_text(text)
    if text in STATE_CODES:
        return None
    else:
        aux = STATES.get(text, None)
        if aux is not None:
            return None
        else:
            return text

def funded_by_foreign_entity(text):
    text = nullify_text(text)
    if text == 'Not Applicable':
        text = 'X'
    return text

def claimant_program(text):
    text = left_text_and_upper(text)
    return {
        'A30': 'A3',
        'A70': 'A7',
        'B90': 'B9',
        'C20': 'C2',
        'S10': 'S1'
    }.get(text, text)

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
    new_record['contingency_humanitarian_peacekeeping_operation'] = left_text_and_upper(record['contingencyhumanitarianpeacekeepingoperation'])
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
    new_record['contractor_congressional_district'] = upper_case(nullify_text(record['congressionaldistrict']))
    new_record['contractor_congressional_district_redundant'] = upper_case(nullify_text(record['vendor_cd']))
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
    new_record['place_of_performance_congressional_district'] = upper_case(nullify_text(record['placeofperformancecongressionaldistrict']))
    new_record['place_of_performance_congressional_district_redundant'] = upper_case(nullify_text(record['pop_cd']))
    new_record['product_or_service_category'] = nullify_text(record['psc_cat'])
    new_record['product_or_service_code'] = left_text_and_upper(record['productorservicecode'])
    new_record['system_or_equipment_code'] = left_text_and_upper(record['systemequipmentcode'])
    new_record['system_or_equipment_description'] = right_text_and_upper(record['systemequipmentcode'])
    new_record['claimant_program'] = claimant_program(record['claimantprogramcode'])
    new_record['naics'] = left_text_and_upper(record['principalnaicscode'])
    new_record['information_technology_commercial_item_category'] = left_text_and_upper(record['informationtechnologycommercialitemcategory'])
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
    new_record['small_business_competitiveness_demonstration_program'] = left_text_and_upper(record['smallbusinesscompetitivenessdemonstrationprogram'])
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
    new_record['issbacertifiedsmalldisadvantagedbusiness'] = nullify_text(record['issbacertifiedsmalldisadvantagedbusiness'])
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
    new_record['contractingofficerbusinesssizedetermination'] = left_text_and_upper(record['contractingofficerbusinesssizedetermination'])
    new_record['is1862landgrantcollege'] = nullify_text(record['is1862landgrantcollege'])
    new_record['is1890landgrantcollege'] = nullify_text(record['is1890landgrantcollege'])
    new_record['is1994landgrantcollege'] = nullify_text(record['is1994landgrantcollege'])
    new_record['isveterinarycollege'] = nullify_text(record['isveterinarycollege'])
    new_record['isveterinaryhospital'] = nullify_text(record['isveterinaryhospital'])
    new_record['isprivateuniversityorcollege'] = nullify_text(record['isprivateuniversityorcollege'])
    new_record['isschoolofforestry'] = nullify_text(record['isschoolofforestry'])
    new_record['isstatecontrolledinstitutionofhigherlearning'] = nullify_text(record['isstatecontrolledinstitutionofhigherlearning'])
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
    new_record['isdotcertifieddisadvantagedbusinessenterprise'] = is_dot_certified(record['isdotcertifieddisadvantagedbusinessenterprise'])
    new_record['iscitylocalgovernment'] = nullify_text(record['iscitylocalgovernment'])
    new_record['iscommunitydevelopedcorporationownedfirm'] = nullify_text(record['iscommunitydevelopedcorporationownedfirm'])
    new_record['iscommunitydevelopmentcorporation'] = nullify_text(record['iscommunitydevelopmentcorporation'])
    new_record['isconstructionfirm'] = nullify_text(record['isconstructionfirm'])
    new_record['ismanufacturerofgoods'] = nullify_text(record['ismanufacturerofgoods'])
    new_record['iscorporateentitynottaxexempt'] = nullify_text(record['iscorporateentitynottaxexempt'])
    new_record['iscountylocalgovernment'] = nullify_text(record['iscountylocalgovernment'])
    new_record['isdomesticshelter'] = nullify_text(record['isdomesticshelter'])
    new_record['isfederalgovernmentagency'] = nullify_text(record['isfederalgovernmentagency'])
    new_record['isfederallyfundedresearchanddevelopmentcorp'] = nullify_text(record['isfederallyfundedresearchanddevelopmentcorp'])
    new_record['isforeigngovernment'] = nullify_text(record['isforeigngovernment'])
    new_record['isindiantribe'] = nullify_text(record['isindiantribe'])
    new_record['isintermunicipallocalgovernment'] = nullify_text(record['isintermunicipallocalgovernment'])
    new_record['isinternationalorganization'] = nullify_text(record['isinternationalorganization'])
    new_record['islaborsurplusareafirm'] = nullify_text(record['islaborsurplusareafirm'])
    new_record['islocalgovernmentowned'] = nullify_text(record['islocalgovernmentowned'])
    new_record['ismunicipalitylocalgovernment'] = nullify_text(record['ismunicipalitylocalgovernment'])
    new_record['isnativehawaiianownedorganizationorfirm'] = nullify_text(record['isnativehawaiianownedorganizationorfirm'])
    new_record['isotherbusinessororganization'] = nullify_text(record['isotherbusinessororganization'])
    new_record['isotherminorityowned'] = nullify_text(record['isotherminorityowned'])
    new_record['ispartnershiporlimitedliabilitypartnership'] = nullify_text(record['ispartnershiporlimitedliabilitypartnership'])
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
    new_record['isjointventureecondisadvwomenownedsmallbusiness'] = nullify_text(record['isjointventureecondisadvwomenownedsmallbusiness'])
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

try:
    os.makedirs(os.path.dirname(os.path.abspath(args.destination)))
except OSError as e:
    if e.errno != errno.EEXIST:
        raise

with open(args.destination, 'wb') as csv_out:
    writer = csv.DictWriter(csv_out, fieldnames = NEW_FIELDS)
    writer.writeheader()
    for filename in glob.glob(args.csv_files):
        print (filename)
        with open(filename, 'rb') as csv_in:
            for row in csv.DictReader(csv_in):
                writer.writerow(transform_row(row))

print('Done!')

print(strftime("%Y-%m-%d %H:%M:%S"))