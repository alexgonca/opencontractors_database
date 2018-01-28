#!/usr/bin/env bash
# declare an array called array and define 3 vales
array=(
a76action
active_schema
)

command="\copy anything to program 'gzip > ./athena/anything.gz' with csv"
for i in "${array[@]}"
do
    psql -h localhost -U postgres -d opencontractors -c "${command//anything/$i}"
    s3cmd --continue-put put ./athena/${i}.gz s3://opencontractors/${i}/${i}.gz
done