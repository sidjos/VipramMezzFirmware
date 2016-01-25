#!/bin/bash

#sidjos@gmail.com, sergo@fnal.gov

timestamp=$(date)

log=log_RUN_POWER_TEST_sid.log

echo "Starting test..." |tee -a $log


timestamp=$(date +%T)
echo $timestamp |tee -a $log

python RunPower.py -b --freq 50 --NStress 10 --odir /home/sidjoshi/sergo_test_setup/VIPRAM_testing/TestingPackage/sid_output/ |tee -a $log

timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done

echo "...Test End" |tee -a $log
