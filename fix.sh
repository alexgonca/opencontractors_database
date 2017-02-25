#!/usr/bin/env bash

for ((year=2002;year<=2015;year++)); do
    if [ -f ./usaspending/201505/${year}_DOD_Contracts_Full_20150515.csv.zip ]; then
        rm ./processed/201505/201505_${year}_oc.csv
        unzip -j ./usaspending/201505/${year}_DOD_Contracts_Full_20150515.csv.zip -d ./usaspending/201505
        python clean_database.py ./usaspending/201505/${year}_DOD_Contracts_Full_20150515.csv ./processed/201505/201505_${year}_oc.csv
        rm ./usaspending/201505/${year}_DOD_Contracts_Full_20150515.csv
    fi
done