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
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done




vdd=25
dvdd=25
vprech=26

freq_start=66
freq_step=2
freq_end=72

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done


vdd=25
dvdd=25
vprech=27

freq_start=74
freq_step=2
freq_end=78

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done



vdd=25
dvdd=25
vprech=28

freq_start=80
freq_step=2
freq_end=86

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done



vdd=25
dvdd=25
vprech=29

freq_start=96
freq_step=2
freq_end=102

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=25
dvdd=25
vprech=30

freq_start=106
freq_step=2
freq_end=112

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done




vdd=25
dvdd=25
vprech=31

freq_start=126
freq_step=2
freq_end=136

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done


vdd=25
dvdd=25
vprech=32

freq_start=138
freq_step=2
freq_end=144

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=25
dvdd=25
vprech=33

freq_start=150
freq_step=2
freq_end=160

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done




vdd=25
dvdd=25
vprech=34

freq_start=154
freq_step=2
freq_end=166

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
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
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=30
dvdd=30
vprech=25

freq_start=50
freq_step=2
freq_end=54

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done




vdd=30
dvdd=30
vprech=26

freq_start=54
freq_step=2
freq_end=58

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done




vdd=30
dvdd=30
vprech=27

freq_start=62
freq_step=2
freq_end=68

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done




vdd=30
dvdd=30
vprech=28

freq_start=66
freq_step=2
freq_end=72

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done



vdd=30
dvdd=30
vprech=29

freq_start=70
freq_step=2
freq_end=78

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=30
dvdd=30
vprech=30

freq_start=78
freq_step=2
freq_end=82

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=30
dvdd=30
vprech=31

freq_start=86
freq_step=2
freq_end=90

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=30
dvdd=30
vprech=32

freq_start=96
freq_step=2
freq_end=102

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=30
dvdd=30
vprech=33

freq_start=108
freq_step=2
freq_end=112

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=30
dvdd=30
vprech=34

freq_start=118
freq_step=2
freq_end=124

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done






vdd=30
dvdd=30
vprech=35

freq_start=140
freq_step=2
freq_end=146

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=35
dvdd=35
vprech=25

freq_start=40
freq_step=2
freq_end=46

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done






vdd=35
dvdd=35
vprech=26

freq_start=48
freq_step=2
freq_end=52

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=35
dvdd=35
vprech=27

freq_start=56
freq_step=2
freq_end=58

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=35
dvdd=35
vprech=28

freq_start=56
freq_step=2
freq_end=60

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done




vdd=35
dvdd=35
vprech=28

freq_start=56
freq_step=2
freq_end=60

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done




vdd=35
dvdd=35
vprech=29

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
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done




vdd=35
dvdd=35
vprech=30

freq_start=66
freq_step=2
freq_end=70

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done




vdd=35
dvdd=35
vprech=31

freq_start=74
freq_step=2
freq_end=78

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=35
dvdd=35
vprech=32

freq_start=78
freq_step=2
freq_end=82

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done





vdd=35
dvdd=35
vprech=33

freq_start=80
freq_step=2
freq_end=84

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
python Run_Original.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --rep $rep --odir $output_dir --NStress $stress --stresstest $stresstest | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
sleep 1s 
done






vdd=35
dvdd=35
vprech=34

freq_start=86
freq_step=2
freq_end=92

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
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
freq_end=102

sleep 1s
for freq in `seq $freq_start $freq_step $freq_end`;
do
echo "" | tee -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $freq and voltages $vprech $vdd $dvdd and stress test is $stresstest at $stress"
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







