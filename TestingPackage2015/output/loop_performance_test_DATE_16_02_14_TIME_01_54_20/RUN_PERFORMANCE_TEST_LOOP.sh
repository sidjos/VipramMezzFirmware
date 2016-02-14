#!/bin/bash

#sidjos@gmail.com, sergo@fnal.gov

timestamp=$(date +DATE_%y_%m_%d_TIME_%H_%M_%S)
echo $timestamp |tee -a $log

log=full_log_RUN_PERFORMANCE_TEST_sid.log
greplog=log_RUN_PERFORMANCE_TEST_sid.log

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


output_dir=/home/sidjoshi/test_sid_2015/VipramMezzFirmware/TestingPackage2015/output/loop_performance_test_$timestamp
mkdir -v $output_dir |tee -a $log

timestamp=$(date +DATE_%y_%m_%d_TIME_%H_%M_%S)
echo $timestamp |tee -a $log


echo "Starting test..." |tee -a $log

timestamp=$(date +DATE_%y_%m_%d_TIME_%H_%M_%S)
echo $timestamp |tee -a $log

rep=5

stresstest=True
stress=1


vprech=29
vdd=35
dvdd=35

freq_start=58
freq_step=2
freq_end=62

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done




echo "...Test End" |tee -a $log
cp -v $log $output_dir | tee -a $log
cp -v Run_Original.py $output_dir | tee -a $log
cp -v RUN_PERFORMANCE_TEST_LOOP.sh $output_dir | tee -a $log
mv results_Match_DVDD_v5.txt $output_dir

timestamp=$(date +DATE_%y_%m_%d_TIME_%H_%M_%S)
echo $timestamp |tee -a $log







