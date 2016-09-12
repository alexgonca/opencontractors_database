#!/bin/bash
for year in 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016
do
    #wget http://download.usaspending.gov/data_archives/201608/csv/${year}_DOD_Contracts_Full_20160815.csv.zip -P aux
    #unzip -j ./aux/${year}_DOD_Contracts_Full_20160815.csv.zip -d ./aux
    #python cleandb.py ./aux/${year}_DOD_Contracts_Full_20160815.csv ./aux/result${year}.csv
    import_csv ./aux/result${year}.csv
    #rm ./aux/${year}_DOD_Contracts_Full_20160815.csv
done