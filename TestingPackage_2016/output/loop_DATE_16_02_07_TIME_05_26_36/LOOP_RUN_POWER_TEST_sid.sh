#!/bin/bash

#sidjos@gmail.com, sergo@fnal.gov


timestamp=$(date +DATE_%y_%m_%d_TIME_%H_%M_%S)
echo $timestamp |tee -a $log

log=full_log_RUN_POWER_TEST_sid.log
greplog=log_RUN_POWER_TEST_sid.log

if [ -f $log ]; then
   echo "File '$log' Exists -> creating copy of old file with timestamp appended and creating new log"
   cp $log copy_loop_power_$timestamp
   rm $log
   touch $log
else
   echo "The File '$log' was created"
   touch $log
fi

if [ -f $greplog ]; then
   echo "File '$greplog' Exists -> creating copy of old file with timestamp appended and creating new log"
   cp $greplog copy_loop_power_$timestamp
   rm $greplog
   touch $greplog
else
   echo "The File '$greplog' was created"
   touch $greplog
fi


output_dir=/home/sidjoshi/test_sid_2015/VipramMezzFirmware/TestingPackage_2016/output/loop_$timestamp
mkdir $output_dir

timestamp=$(date +DATE_%y_%m_%d_TIME_%H_%M_%S)
echo $timestamp |tee -a $log

# | grep 'REAL\|---\|Vpre bit\|Vdd bit\|Dvdd bit\|memoryBlocksNeeded\|average\|Info\|No \|missing' 


echo "Starting test..." |tee -a $log


vprech=35
vdd=35
dvdd=35
freq=50
stress=10

v_start=25
v_step=1
v_end=35

sleep 1s
for volt in `seq $v_start $v_step $v_end`;
do
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq and all voltages at $volt"
python RunPower.py -b --freq $freq --vprech $volt --vdd $volt --dvdd $volt --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s
done


echo "...Test End" |tee -a $log

mv $log $output_dir
mv results_Match_DVDD_v5.txt $output_dir

more $log | grep 'REAL\|---\|Vpre bit\|Vdd bit\|Dvdd bit\|memoryBlocksNeeded\|average\|Info\|No \|missing' >> $greplog
cp $greplog $output_dir


echo "exit"


