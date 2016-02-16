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



vdd=25
dvdd=25
vprech=25

freq_start=62
freq_step=2
freq_end=68

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=25
dvdd=25
vprech=28

freq_start=76
freq_step=2
freq_end=82

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done




vdd=25
dvdd=25
vprech=31

freq_start=120
freq_step=2
freq_end=128

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done




vdd=25
dvdd=25
vprech=34

freq_start=164
freq_step=2
freq_end=174

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=25
dvdd=25
vprech=35

freq_start=170
freq_step=2
freq_end=180

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=30
dvdd=30
vprech=28

freq_start=60
freq_step=2
freq_end=68

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done




vdd=30
dvdd=30
vprech=30

freq_start=76
freq_step=2
freq_end=82

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=30
dvdd=30
vprech=32

freq_start=84
freq_step=2
freq_end=96

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=35
dvdd=35
vprech=27

freq_start=50
freq_step=2
freq_end=58

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=35
dvdd=35
vprech=28

freq_start=54
freq_step=2
freq_end=62

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done






vdd=35
dvdd=35
vprech=30

freq_start=60
freq_step=2
freq_end=66

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done




vdd=35
dvdd=35
vprech=31

freq_start=66
freq_step=2
freq_end=74

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=35
dvdd=35
vprech=32

freq_start=70
freq_step=2
freq_end=78

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done






vdd=25
dvdd=25
vprech=25

freq_start=60
freq_step=2
freq_end=66

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=26
dvdd=26
vprech=26

freq_start=64
freq_step=2
freq_end=68

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=27
dvdd=27
vprech=27

freq_start=66
freq_step=2
freq_end=72

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=28
dvdd=28
vprech=28

freq_start=68
freq_step=2
freq_end=74

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=29
dvdd=29
vprech=29

freq_start=72
freq_step=2
freq_end=78

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=30
dvdd=30
vprech=30

freq_start=74
freq_step=2
freq_end=82

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=31
dvdd=31
vprech=31

freq_start=76
freq_step=2
freq_end=82

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done






vdd=32
dvdd=32
vprech=32

freq_start=84
freq_step=2
freq_end=90

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=33
dvdd=33
vprech=33

freq_start=84
freq_step=2
freq_end=92

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=34
dvdd=34
vprech=34

freq_start=90
freq_step=2
freq_end=96

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=35
dvdd=35
vprech=35

freq_start=96
freq_step=2
freq_end=100

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress" | tee -a $log
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done







echo "...Test End" |tee -a $log
cp -v $log $output_dir | tee -a $log
cp -v Run_Original.py $output_dir | tee -a $log
cp -v RUN_PERFORMANCE_TEST_LOOP.sh $output_dir | tee -a $log
more $log | grep 'REAL\|---\|Vpre bit\|Vdd bit\|Dvdd bit\|memoryBlocksNeeded\|missing\|No \|error\|Error\|Invalid' >> $greplog
cp -v $greplog $output_dir

timestamp=$(date +DATE_%y_%m_%d_TIME_%H_%M_%S)
echo $timestamp |tee -a $log







