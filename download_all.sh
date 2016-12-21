#!/usr/bin/env bash

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
            curl -f http://download.usaspending.gov/data_archives/${year_file}$(printf %02d $month)/csv/${year}_DOD_Contracts_Delta_${year_file}$(printf %02d $month)15.csv.zip --create-dirs -o ./usaspending/${year_file}$(printf %02d $month)/${year}_DOD_Contracts_Delta_${year_file}$(printf %02d $month)15.csv.zip
        done
        month=$(($month+1))
    done
    month=1
done

for ((year=2000;year<=2015;year++)); do
    curl -f http://download.usaspending.gov/data_archives/201505/csv/${year}_DOD_Contracts_Full_20150515.csv.zip --create-dirs -o ./usaspending/201505/${year}_DOD_Contracts_Full_20150515.csv.zip
done