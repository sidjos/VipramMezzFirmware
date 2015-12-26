#!/bin/bash

#sidjos@gmail.com, sergo@fnal.gov

timestamp=$(date +%T)

log=output_run2_30_30_x_jaipur_vprech_performance_testing_output_script.log


if [ -f $log ]; then
   echo "File '$log' Exists -> creating copy of old file with timestamp appended and creating new log"
   cp $log copy_vprech_voltagelevel_performance_testing_output_script_$timestamp
   rm $log
   touch $log
else
   echo "The File '$log' Does Not Exist and was created"
   touch $log
fi

#rm ./$log
#touch $log


echo "Starting run2_vprech_voltagelevel_performance_testing_output test..." |tee -a $log

timestamp=$(date)
echo $timestamp |tee -a $log

rep=5





vprech=25
vdd=30
dvdd=30

freq_start=50
freq_step=4
freq_end=70

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep | grep 'REAL\|---\|Vpre bit\|Vdd bit\|Dvdd bit\|memoryBlocksNeeded' | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done

echo "...Test End" |tee -a $log







vprech=27
vdd=30
dvdd=30

freq_start=55
freq_step=4
freq_end=75

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep | grep 'REAL\|---\|Vpre bit\|Vdd bit\|Dvdd bit\|memoryBlocksNeeded' | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done

echo "...Test End" |tee -a $log






vprech=30
vdd=30
dvdd=30

freq_start=76
freq_step=4
freq_end=88

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep | grep 'REAL\|---\|Vpre bit\|Vdd bit\|Dvdd bit\|memoryBlocksNeeded' | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done

echo "...Test End" |tee -a $log









