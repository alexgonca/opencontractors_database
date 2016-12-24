#!/usr/bin/env bash

for ((year=2000;year<=2015;year++)); do
    if [ -f ./usaspending/201505/${year}_DOD_Contracts_Full_20150515.csv.zip ]; then
        unzip -j ./usaspending/201505/${year}_DOD_Contracts_Full_20150515.csv.zip -d ./usaspending/201505
        python clean_database.py ./usaspending/201505/${year}_DOD_Contracts_Full_20150515.csv ./processed/201505/201505_${year}_oc.csv
        rm ./usaspending/201505/${year}_DOD_Contracts_Full_20150515.csv
    fi
done

unzip -j ./usaspending/201507/2013_DOD_Contracts_Delta_20150715.csv.zip -d ./usaspending/201507
python clean_database.py ./usaspending/201507/2013_DOD_Contracts_Delta_20150715.csv ./processed/201507/201507_2013_oc.csv
rm ./usaspending/201507/2013_DOD_Contracts_Delta_20150715.csv

unzip -j ./usaspending/201508/2013_DOD_Contracts_Delta_20150815.csv.zip -d ./usaspending/201508
python clean_database.py ./usaspending/201508/2013_DOD_Contracts_Delta_20150815.csv ./processed/201508/201508_2013_oc.csv
rm ./usaspending/201508/2013_DOD_Contracts_Delta_20150815.csv

unzip -j ./usaspending/201508/2014_DOD_Contracts_Delta_20150815.csv.zip -d ./usaspending/201508
python clean_database.py ./usaspending/201508/2014_DOD_Contracts_Delta_20150815.csv ./processed/201508/201508_2014_oc.csv
rm ./usaspending/201508/2014_DOD_Contracts_Delta_20150815.csv

unzip -j ./usaspending/201508/2015_DOD_Contracts_Delta_20150815.csv.zip -d ./usaspending/201508
python clean_database.py ./usaspending/201508/2015_DOD_Contracts_Delta_20150815.csv ./processed/201508/201508_2015_oc.csv
rm ./usaspending/201508/2015_DOD_Contracts_Delta_20150815.csv

unzip -j ./usaspending/201510/2007_DOD_Contracts_Delta_20151015.csv.zip -d ./usaspending/201510
python clean_database.py ./usaspending/201510/2007_DOD_Contracts_Delta_20151015.csv ./processed/201510/201510_2007_oc.csv
rm ./usaspending/201510/2007_DOD_Contracts_Delta_20151015.csv

unzip -j ./usaspending/201511/2015_DOD_Contracts_Delta_20151115.csv.zip -d ./usaspending/201511
python clean_database.py ./usaspending/201511/2015_DOD_Contracts_Delta_20151115.csv ./processed/201511/201511_2015_oc.csv
rm ./usaspending/201511/2015_DOD_Contracts_Delta_20151115.csv