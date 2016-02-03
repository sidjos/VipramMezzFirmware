#!/bin/bash
#sidjos@gmail.com, sergo@fnal.gov

timestamp=$(date +DATE_%y_%m_%d_TIME_%H_%M_%S)

log=log_RUN_POWER_TEST_sid.log
output_dir=/home/sidjoshi/test_sid_2015/VipramMezzFirmware/TestingPackage_2016/output/

if [ -f $log ]; then
   echo "File '$log' Exists -> creating copy of old file with timestamp appended and creating new log"
   cp $log copy_loop_power_$timestamp
   mv copy_loop_power_$timestamp $output_dir
   rm $log
   touch $log
else
   echo "The File '$log' was created"
   touch $log
fi

timestamp=$(date +DATE_%y_%m_%d_TIME_%H_%M_%S)
echo $timestamp |tee -a $log
echo "Starting test..." |tee -a $log



vprech=35
vdd=35
dvdd=35
freq=50
stress=10

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq and voltages $vprech $vdd $dvdd"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log

timestamp=$(date +%T)
echo $timestamp |tee -a $log

echo "...Test End" |tee -a $log

