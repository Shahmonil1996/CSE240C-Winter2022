#!/bin/bash
SECONDS=0
for i in DJOLT_Design_10long_4short DJOLT_Design_20long_4short DJOLT_Design_2short_15long DJOLT_Design_6short_15long DJOLT_Design_10short_15long DJOLT_Design_25long_4short DJOLT_Design_30long_4short DJOLT_Design_8short_15long; do
  cd $i
  #grep -nr "Finished CPU 0 instructions" | tee grep.txt
  #grep -nr "Finished CPU 0 instructions" -nr grep.txt | cut -d " " -f10 | tee grep.csv
  #grep -nr "L1I LOAD" | tee grep2.txt
  #grep -nr "L1I LOAD" grep.txt | cut -d ":" -f7 | tee grep2.csv
  echo "in directory $i"
  cd ..
done