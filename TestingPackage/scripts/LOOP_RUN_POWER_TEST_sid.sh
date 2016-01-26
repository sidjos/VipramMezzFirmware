#!/bin/bash

#sidjos@gmail.com, sergo@fnal.gov

timestamp=$(date +DATE_%y_%m_%d_TIME_%H_%M_%S)

log=log_RUN_POWER_TEST_sid.log

if [ -f $log ]; then
   echo "File '$log' Exists -> creating copy of old file with timestamp appended and creating new log"
   cp $log copy_loop_power_$timestamp
   rm $log
   touch $log
else
   echo "The File '$log' was created"
   touch $log
fi


output_dir=/home/sidjoshi/test_sid_2015/VipramMezzFirmware/TestingPackage/sid_output/loop_$timestamp
mkdir $output_dir

timestamp=$(date +DATE_%y_%m_%d_TIME_%H_%M_%S)
echo $timestamp |tee -a $log







echo "Starting test..." |tee -a $log


frequency=50
stress=10

timestamp=$(date +DATE_%y_%m_%d_TIME_%H_%M_%S)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $frequency and stress $stress"

python RunPower.py -b --freq $frequency --NStress $stress --odir $output_dir |tee -a $log

timestamp=$(date +DATE_%y_%m_%d_TIME_%H_%M_%S)
echo $timestamp |tee -a $log



frequency=50
stress=20

timestamp=$(date +DATE_%y_%m_%d_TIME_%H_%M_%S)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $frequency and stress $stress"

python RunPower.py -b --freq $frequency --NStress $stress --odir $output_dir |tee -a $log

timestamp=$(date +DATE_%y_%m_%d_TIME_%H_%M_%S)
echo $timestamp |tee -a $log



mv $log $output_dir
mv results_Match_DVDD_v5.txt $output_dir

echo "...Test End" |tee -a $log

