#!/usr/bin/env bash

for ((year=2000;year<=2015;year++)); do
    if [ -f ./usaspending/201505/${year}_DOD_Contracts_Full_20150515.csv.zip ]; then
        unzip -j ./usaspending/201505/${year}_DOD_Contracts_Full_20150515.csv.zip -d ./usaspending/201505
        python clean_database.py ./usaspending/201505/${year}_DOD_Contracts_Full_20150515.csv ./processed/201505/201505_${year}_oc.csv
        rm ./usaspending/201505/${year}_DOD_Contracts_Full_20150515.csv
    fi
done

day=$(date +'%d')
if [ "$((day))" -ge 15 ] ; then
    current_month=$(date +'%m')
    current_year=$(date +'%Y')
else
    current_month=$(date -d "$d - 30 days" +%m)
    current_year=$(date -d "$d - 30 days" +%Y)
fi

month=6
for ((year_file=2015;year_file<=current_year;year_file++)); do
    if [ $current_year -eq $year_file ] ; then
        final_month=$current_month
    else
        final_month=12
    fi
    while [ $month -le $final_month ]; do
        for ((year=2000;year<=year_file+1;year++)); do
            if [ -f ./usaspending/${year_file}$(printf %02d $month)/${year}_DOD_Contracts_Delta_${year_file}$(printf %02d $month)15.csv.zip ]; then
                unzip -j ./usaspending/${year_file}$(printf %02d $month)/${year}_DOD_Contracts_Delta_${year_file}$(printf %02d $month)15.csv.zip -d ./usaspending/${year_file}$(printf %02d $month)
                python clean_database.py ./usaspending/${year_file}$(printf %02d $month)/${year}_DOD_Contracts_Delta_${year_file}$(printf %02d $month)15.csv ./processed/${year_file}$(printf %02d $month)/${year_file}$(printf %02d $month)_${year}_oc.csv
                rm ./usaspending/${year_file}$(printf %02d $month)/${year}_DOD_Contracts_Delta_${year_file}$(printf %02d $month)15.csv
            fi
        done
        month=$(($month+1))
    done
    month=1
done