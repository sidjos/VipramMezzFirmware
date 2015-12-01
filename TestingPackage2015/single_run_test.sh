#!/bin/bash

#sidjos@gmail.com, sergo@fnal.gov

timestamp=$(date +%T)

log=output_single_run_test.log


if [ -f $log ]; then
   echo "File '$log' Exists -> creating copy of old file with timestamp appended and creating new log"
   cp $log copy_output_single_run_test_$timestamp
   rm $log
   touch $log
else
   echo "The File '$log' Does Not Exist and was created"
   touch $log
fi

#rm ./$log
#touch $log


echo "Starting single test / no grep ..." |tee -a $log

timestamp=$(date +%T)
echo $timestamp |tee -a $log

rep=5

vprech=34
vdd=25
dvdd=25

freq=165


echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "----Running at frequency $freq and voltages $vprech $vdd $dvdd"

python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep | tee  -a $log

timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 

echo "...Test End" |tee -a $log

