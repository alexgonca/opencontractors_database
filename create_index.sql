CREATE INDEX IF NOT EXISTS idx_transaction_status ON contract_csv (transaction_status);
CREATE INDEX IF NOT EXISTS idx_fundedbyforeignentity ON contract_csv (fundedbyforeignentity);
CREATE INDEX IF NOT EXISTS idx_contractactiontype ON contract_csv (contractactiontype);
CREATE INDEX IF NOT EXISTS idx_reasonformodification ON contract_csv (reasonformodification);
CREATE INDEX IF NOT EXISTS idx_typeofcontractpricing ON contract_csv (typeofcontractpricing);
CREATE INDEX IF NOT EXISTS idx_subcontractplan ON contract_csv (subcontractplan);
CREATE INDEX IF NOT EXISTS idx_lettercontract ON contract_csv (lettercontract);
CREATE INDEX IF NOT EXISTS idx_multiyearcontract ON contract_csv (multiyearcontract);
CREATE INDEX IF NOT EXISTS idx_performancebasedservicecontract ON contract_csv (performancebasedservicecontract);
CREATE INDEX IF NOT EXISTS idx_contingencyhumanitarianpeacekeepingoperation ON contract_csv (contingencyhumanitarianpeacekeepingoperation);
CREATE INDEX IF NOT EXISTS idx_contractfinancing ON contract_csv (contractfinancing);
CREATE INDEX IF NOT EXISTS idx_costorpricingdata ON contract_csv (costorpricingdata);
CREATE INDEX IF NOT EXISTS idx_costaccountingstandardsclause ON contract_csv (costaccountingstandardsclause);
CREATE INDEX IF NOT EXISTS idx_purchasecardaspaymentmethod ON contract_csv (purchasecardaspaymentmethod);
CREATE INDEX IF NOT EXISTS idx_nationalinterestactioncode ON contract_csv (nationalinterestactioncode);
CREATE INDEX IF NOT EXISTS idx_typeofidc ON contract_csv (typeofidc);
CREATE INDEX IF NOT EXISTS idx_multipleorsingleawardidc ON contract_csv (multipleorsingleawardidc);
CREATE INDEX IF NOT EXISTS idx_state ON contract_csv (state);
CREATE INDEX IF NOT EXISTS idx_vendorcountrycode ON contract_csv (vendorcountrycode);
CREATE INDEX IF NOT EXISTS idx_vendor_state_code ON contract_csv (vendor_state_code);
CREATE INDEX IF NOT EXISTS idx_statecode ON contract_csv (statecode);
CREATE INDEX IF NOT EXISTS idx_pop_state_code ON contract_csv (pop_state_code);
CREATE INDEX IF NOT EXISTS idx_placeofperformancecountrycode ON contract_csv (placeofperformancecountrycode);
CREATE INDEX IF NOT EXISTS idx_psc_cat ON contract_csv (psc_cat);
CREATE INDEX IF NOT EXISTS idx_productorservicecode ON contract_csv (productorservicecode);
CREATE INDEX IF NOT EXISTS idx_claimantprogramcode ON contract_csv (claimantprogramcode);
CREATE INDEX IF NOT EXISTS idx_informationtechnologycommercialitemcategory ON contract_csv (informationtechnologycommercialitemcategory);
CREATE INDEX IF NOT EXISTS idx_gfe_gfp ON contract_csv (gfe_gfp);
CREATE INDEX IF NOT EXISTS idx_useofepadesignatedproducts ON contract_csv (useofepadesignatedproducts);
CREATE INDEX IF NOT EXISTS idx_recoveredmaterialclauses ON contract_csv (recoveredmaterialclauses);
CREATE INDEX IF NOT EXISTS idx_seatransportation ON contract_csv (seatransportation);
CREATE INDEX IF NOT EXISTS idx_contractbundling ON contract_csv (contractbundling);
CREATE INDEX IF NOT EXISTS idx_consolidatedcontract ON contract_csv (consolidatedcontract);
CREATE INDEX IF NOT EXISTS idx_countryoforigin ON contract_csv (countryoforigin);
CREATE INDEX IF NOT EXISTS idx_placeofmanufacture ON contract_csv (placeofmanufacture);
CREATE INDEX IF NOT EXISTS idx_manufacturingorganizationtype ON contract_csv (manufacturingorganizationtype);
CREATE INDEX IF NOT EXISTS idx_extentcompeted ON contract_csv (extentcompeted);
CREATE INDEX IF NOT EXISTS idx_reasonnotcompeted ON contract_csv (reasonnotcompeted);
CREATE INDEX IF NOT EXISTS idx_commercialitemacquisitionprocedures ON contract_csv (commercialitemacquisitionprocedures);
CREATE INDEX IF NOT EXISTS idx_commercialitemtestprogram ON contract_csv (commercialitemtestprogram);
CREATE INDEX IF NOT EXISTS idx_smallbusinesscompetitivenessdemonstrationprogram ON contract_csv (smallbusinesscompetitivenessdemonstrationprogram);
CREATE INDEX IF NOT EXISTS idx_a76action ON contract_csv (a76action);
CREATE INDEX IF NOT EXISTS idx_competitiveprocedures ON contract_csv (competitiveprocedures);
CREATE INDEX IF NOT EXISTS idx_solicitationprocedures ON contract_csv (solicitationprocedures);
CREATE INDEX IF NOT EXISTS idx_typeofsetaside ON contract_csv (typeofsetaside);
CREATE INDEX IF NOT EXISTS idx_localareasetaside ON contract_csv (localareasetaside);
CREATE INDEX IF NOT EXISTS idx_evaluatedpreference ON contract_csv (evaluatedpreference);
CREATE INDEX IF NOT EXISTS idx_fedbizopps ON contract_csv (fedbizopps);
CREATE INDEX IF NOT EXISTS idx_research ON contract_csv (research);
CREATE INDEX IF NOT EXISTS idx_statutoryexceptiontofairopportunity ON contract_csv (statutoryexceptiontofairopportunity);
CREATE INDEX IF NOT EXISTS idx_organizationaltype ON contract_csv (organizationaltype);
CREATE INDEX IF NOT EXISTS idx_firm8aflag ON contract_csv (firm8aflag);
CREATE INDEX IF NOT EXISTS idx_hubzoneflag ON contract_csv (hubzoneflag);
CREATE INDEX IF NOT EXISTS idx_sdbflag ON contract_csv (sdbflag);
CREATE INDEX IF NOT EXISTS idx_issbacertifiedsmalldisadvantagedbusiness ON contract_csv (issbacertifiedsmalldisadvantagedbusiness);
CREATE INDEX IF NOT EXISTS idx_shelteredworkshopflag ON contract_csv (shelteredworkshopflag);
CREATE INDEX IF NOT EXISTS idx_hbcuflag ON contract_csv (hbcuflag);
CREATE INDEX IF NOT EXISTS idx_educationalinstitutionflag ON contract_csv (educationalinstitutionflag);
CREATE INDEX IF NOT EXISTS idx_womenownedflag ON contract_csv (womenownedflag);
CREATE INDEX IF NOT EXISTS idx_veteranownedflag ON contract_csv (veteranownedflag);
CREATE INDEX IF NOT EXISTS idx_srdvobflag ON contract_csv (srdvobflag);
CREATE INDEX IF NOT EXISTS idx_localgovernmentflag ON contract_csv (localgovernmentflag);
CREATE INDEX IF NOT EXISTS idx_minorityinstitutionflag ON contract_csv (minorityinstitutionflag);
CREATE INDEX IF NOT EXISTS idx_aiobflag ON contract_csv (aiobflag);
CREATE INDEX IF NOT EXISTS idx_stategovernmentflag ON contract_csv (stategovernmentflag);
CREATE INDEX IF NOT EXISTS idx_federalgovernmentflag ON contract_csv (federalgovernmentflag);
CREATE INDEX IF NOT EXISTS idx_minorityownedbusinessflag ON contract_csv (minorityownedbusinessflag);
CREATE INDEX IF NOT EXISTS idx_apaobflag ON contract_csv (apaobflag);
CREATE INDEX IF NOT EXISTS idx_tribalgovernmentflag ON contract_csv (tribalgovernmentflag);
CREATE INDEX IF NOT EXISTS idx_baobflag ON contract_csv (baobflag);
CREATE INDEX IF NOT EXISTS idx_naobflag ON contract_csv (naobflag);
CREATE INDEX IF NOT EXISTS idx_saaobflag ON contract_csv (saaobflag);
CREATE INDEX IF NOT EXISTS idx_nonprofitorganizationflag ON contract_csv (nonprofitorganizationflag);
CREATE INDEX IF NOT EXISTS idx_isothernotforprofitorganization ON contract_csv (isothernotforprofitorganization);
CREATE INDEX IF NOT EXISTS idx_isforprofitorganization ON contract_csv (isforprofitorganization);
CREATE INDEX IF NOT EXISTS idx_isfoundation ON contract_csv (isfoundation);
CREATE INDEX IF NOT EXISTS idx_haobflag ON contract_csv (haobflag);
CREATE INDEX IF NOT EXISTS idx_ishispanicservicinginstitution ON contract_csv (ishispanicservicinginstitution);
CREATE INDEX IF NOT EXISTS idx_emergingsmallbusinessflag ON contract_csv (emergingsmallbusinessflag);
CREATE INDEX IF NOT EXISTS idx_hospitalflag ON contract_csv (hospitalflag);
CREATE INDEX IF NOT EXISTS idx_contractingofficerbusinesssizedetermination ON contract_csv (contractingofficerbusinesssizedetermination);
CREATE INDEX IF NOT EXISTS idx_is1862landgrantcollege ON contract_csv (is1862landgrantcollege);
CREATE INDEX IF NOT EXISTS idx_is1890landgrantcollege ON contract_csv (is1890landgrantcollege);
CREATE INDEX IF NOT EXISTS idx_is1994landgrantcollege ON contract_csv (is1994landgrantcollege);
CREATE INDEX IF NOT EXISTS idx_isveterinarycollege ON contract_csv (isveterinarycollege);
CREATE INDEX IF NOT EXISTS idx_isveterinaryhospital ON contract_csv (isveterinaryhospital);
CREATE INDEX IF NOT EXISTS idx_isprivateuniversityorcollege ON contract_csv (isprivateuniversityorcollege);
CREATE INDEX IF NOT EXISTS idx_isschoolofforestry ON contract_csv (isschoolofforestry);
CREATE INDEX IF NOT EXISTS idx_isstatecontrolledinstitutionofhigherlearning ON contract_csv (isstatecontrolledinstitutionofhigherlearning);
CREATE INDEX IF NOT EXISTS idx_isserviceprovider ON contract_csv (isserviceprovider);
CREATE INDEX IF NOT EXISTS idx_receivescontracts ON contract_csv (receivescontracts);
CREATE INDEX IF NOT EXISTS idx_receivesgrants ON contract_csv (receivesgrants);
CREATE INDEX IF NOT EXISTS idx_receivescontractsandgrants ON contract_csv (receivescontractsandgrants);
CREATE INDEX IF NOT EXISTS idx_isairportauthority ON contract_csv (isairportauthority);
CREATE INDEX IF NOT EXISTS idx_iscouncilofgovernments ON contract_csv (iscouncilofgovernments);
CREATE INDEX IF NOT EXISTS idx_ishousingauthoritiespublicortribal ON contract_csv (ishousingauthoritiespublicortribal);
CREATE INDEX IF NOT EXISTS idx_isinterstateentity ON contract_csv (isinterstateentity);
CREATE INDEX IF NOT EXISTS idx_isplanningcommission ON contract_csv (isplanningcommission);
CREATE INDEX IF NOT EXISTS idx_isportauthority ON contract_csv (isportauthority);
CREATE INDEX IF NOT EXISTS idx_istransitauthority ON contract_csv (istransitauthority);
CREATE INDEX IF NOT EXISTS idx_issubchapterscorporation ON contract_csv (issubchapterscorporation);
CREATE INDEX IF NOT EXISTS idx_islimitedliabilitycorporation ON contract_csv (islimitedliabilitycorporation);
CREATE INDEX IF NOT EXISTS idx_isforeignownedandlocated ON contract_csv (isforeignownedandlocated);
CREATE INDEX IF NOT EXISTS idx_isarchitectureandengineering ON contract_csv (isarchitectureandengineering);
CREATE INDEX IF NOT EXISTS idx_isdotcertifieddisadvantagedbusinessenterprise ON contract_csv (isdotcertifieddisadvantagedbusinessenterprise);
CREATE INDEX IF NOT EXISTS idx_iscitylocalgovernment ON contract_csv (iscitylocalgovernment);
CREATE INDEX IF NOT EXISTS idx_iscommunitydevelopedcorporationownedfirm ON contract_csv (iscommunitydevelopedcorporationownedfirm);
CREATE INDEX IF NOT EXISTS idx_iscommunitydevelopmentcorporation ON contract_csv (iscommunitydevelopmentcorporation);
CREATE INDEX IF NOT EXISTS idx_isconstructionfirm ON contract_csv (isconstructionfirm);
CREATE INDEX IF NOT EXISTS idx_ismanufacturerofgoods ON contract_csv (ismanufacturerofgoods);
CREATE INDEX IF NOT EXISTS idx_iscorporateentitynottaxexempt ON contract_csv (iscorporateentitynottaxexempt);
CREATE INDEX IF NOT EXISTS idx_iscountylocalgovernment ON contract_csv (iscountylocalgovernment);
CREATE INDEX IF NOT EXISTS idx_isdomesticshelter ON contract_csv (isdomesticshelter);
CREATE INDEX IF NOT EXISTS idx_isfederalgovernmentagency ON contract_csv (isfederalgovernmentagency);
CREATE INDEX IF NOT EXISTS idx_isfederallyfundedresearchanddevelopmentcorp ON contract_csv (isfederallyfundedresearchanddevelopmentcorp);
CREATE INDEX IF NOT EXISTS idx_isforeigngovernment ON contract_csv (isforeigngovernment);
CREATE INDEX IF NOT EXISTS idx_isindiantribe ON contract_csv (isindiantribe);
CREATE INDEX IF NOT EXISTS idx_isintermunicipallocalgovernment ON contract_csv (isintermunicipallocalgovernment);
CREATE INDEX IF NOT EXISTS idx_isinternationalorganization ON contract_csv (isinternationalorganization);
CREATE INDEX IF NOT EXISTS idx_islaborsurplusareafirm ON contract_csv (islaborsurplusareafirm);
CREATE INDEX IF NOT EXISTS idx_islocalgovernmentowned ON contract_csv (islocalgovernmentowned);
CREATE INDEX IF NOT EXISTS idx_ismunicipalitylocalgovernment ON contract_csv (ismunicipalitylocalgovernment);
CREATE INDEX IF NOT EXISTS idx_isnativehawaiianownedorganizationorfirm ON contract_csv (isnativehawaiianownedorganizationorfirm);
CREATE INDEX IF NOT EXISTS idx_isotherbusinessororganization ON contract_csv (isotherbusinessororganization);
CREATE INDEX IF NOT EXISTS idx_isotherminorityowned ON contract_csv (isotherminorityowned);
CREATE INDEX IF NOT EXISTS idx_ispartnershiporlimitedliabilitypartnership ON contract_csv (ispartnershiporlimitedliabilitypartnership);
CREATE INDEX IF NOT EXISTS idx_isschooldistrictlocalgovernment ON contract_csv (isschooldistrictlocalgovernment);
CREATE INDEX IF NOT EXISTS idx_issmallagriculturalcooperative ON contract_csv (issmallagriculturalcooperative);
CREATE INDEX IF NOT EXISTS idx_issoleproprietorship ON contract_csv (issoleproprietorship);
CREATE INDEX IF NOT EXISTS idx_istownshiplocalgovernment ON contract_csv (istownshiplocalgovernment);
CREATE INDEX IF NOT EXISTS idx_istriballyownedfirm ON contract_csv (istriballyownedfirm);
CREATE INDEX IF NOT EXISTS idx_istribalcollege ON contract_csv (istribalcollege);
CREATE INDEX IF NOT EXISTS idx_isalaskannativeownedcorporationorfirm ON contract_csv (isalaskannativeownedcorporationorfirm);
CREATE INDEX IF NOT EXISTS idx_iscorporateentitytaxexempt ON contract_csv (iscorporateentitytaxexempt);
CREATE INDEX IF NOT EXISTS idx_iswomenownedsmallbusiness ON contract_csv (iswomenownedsmallbusiness);
CREATE INDEX IF NOT EXISTS idx_isecondisadvwomenownedsmallbusiness ON contract_csv (isecondisadvwomenownedsmallbusiness);
CREATE INDEX IF NOT EXISTS idx_isjointventurewomenownedsmallbusiness ON contract_csv (isjointventurewomenownedsmallbusiness);
CREATE INDEX IF NOT EXISTS idx_isjointventureecondisadvwomenownedsmallbusiness ON contract_csv (isjointventureecondisadvwomenownedsmallbusiness);
CREATE INDEX IF NOT EXISTS idx_walshhealyact ON contract_csv (walshhealyact);
CREATE INDEX IF NOT EXISTS idx_servicecontractact ON contract_csv (servicecontractact);
CREATE INDEX IF NOT EXISTS idx_davisbaconact ON contract_csv (davisbaconact);
CREATE INDEX IF NOT EXISTS idx_clingercohenact ON contract_csv (clingercohenact);
CREATE INDEX IF NOT EXISTS idx_interagencycontractingauthority ON contract_csv (interagencycontractingauthority);