#!/bin/bash

#sidjos@gmail.com, sergo@fnal.gov

timestamp=$(date)

log=run_script_no_grep.log


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


echo "Starting $log test..." |tee -a $log

timestamp=$(date)
echo $timestamp |tee -a $log

rep=5


vprech=30
vdd=30
dvdd=30

freq_start=79
freq_step=1
freq_end=83

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done

echo "...Test End" |tee -a $log







