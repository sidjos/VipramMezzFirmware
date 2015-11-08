#!/bin/bash

#sidjos@gmail.com, sergo@fnal.gov

echo "clean..." |tee -a $log

log=perfofdata_output_script.log

#rm ./$log
#touch $log

echo "Starting test..." |tee -a $log

timestamp=$(date +%T)
echo $timestamp |tee -a $log



vprech=35
vdd=35
dvdd=35

freq_start=90
freq_step=10
freq_end=110


sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --load False --run True| grep 'REAL\|---\|Vpre bit\|Vdd bit\|Dvdd bit\|memoryBlocksNeeded' | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done

echo "...Test End" |tee -a $log

#python Run_Original.py -b --NStress $stress --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd | grep 'REAL\|Firmware\|Vpre bit\|Vdd bit\|Dvdd bit\|memoryBlocksNeeded' | tee  -a $log
