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


echo "Starting POWER test..." |tee -a $log

#-------------------------------------------------------------------------------------
vprech=25
vdd=25
dvdd=25
freq=63
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=26
vdd=26
dvdd=26
freq=67
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=27
vdd=27
dvdd=27
freq=69
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=28
vdd=28
dvdd=28
freq=71
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=29
vdd=29
dvdd=29
freq=77
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=30
vdd=30
dvdd=30
freq=78
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=31
vdd=31
dvdd=31
freq=79
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=32
vdd=32
dvdd=32
freq=86
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=33
vdd=33
dvdd=33
freq=88
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=34
vdd=34
dvdd=34
freq=90
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=35
vdd=35
dvdd=35
freq=96
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log


#-------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------


vprech=25
vdd=25
dvdd=25
freq=63
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=26
vdd=25
dvdd=25
freq=67
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=27
vdd=25
dvdd=25
freq=74
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=28
vdd=25
dvdd=25
freq=79
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=29
vdd=25
dvdd=25
freq=98
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=30
vdd=25
dvdd=25
freq=108
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=31
vdd=25
dvdd=25
freq=125
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=32
vdd=25
dvdd=25
freq=139
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=33
vdd=25
dvdd=25
freq=151
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=34
vdd=25
dvdd=25
freq=167
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=35
vdd=25
dvdd=25
freq=174
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=25
vdd=30
dvdd=30
freq=51
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=26
vdd=30
dvdd=30
freq=57
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=27
vdd=30
dvdd=30
freq=62
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=28
vdd=30
dvdd=30
freq=67
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=29
vdd=30
dvdd=30
freq=71
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=30
vdd=30
dvdd=30
freq=77
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=31
vdd=30
dvdd=30
freq=88
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=32
vdd=30
dvdd=30
freq=91
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=33
vdd=30
dvdd=30
freq=108
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=34
vdd=30
dvdd=30
freq=118
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=35
vdd=30
dvdd=30
freq=140
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=25
vdd=35
dvdd=35
freq=40
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=26
vdd=35
dvdd=35
freq=48
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=27
vdd=35
dvdd=35
freq=53
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=28
vdd=35
dvdd=35
freq=58
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=29
vdd=35
dvdd=35
freq=61
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=30
vdd=35
dvdd=35
freq=66
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=31
vdd=35
dvdd=35
freq=72
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=32
vdd=35
dvdd=35
freq=78
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=33
vdd=35
dvdd=35
freq=82
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=34
vdd=35
dvdd=35
freq=86
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log

#-------------------------------------------------------------------------------------
vprech=35
vdd=35
dvdd=35
freq=98
stress=1

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "---Running at frequency $freq , voltages dvdd $dvdd , vdd $vdd , vprech $vprech and stress $stress"
python RunPower.py -b --freq $freq --vprech $vprech --vdd $vdd --dvdd $dvdd --NStress $stress --odir $output_dir | tee  -a $log
timestamp=$(date +%T)
echo $timestamp |tee -a $log



echo "...Test End" |tee -a $log


cp -v $log $output_dir | tee -a $log
mv results_Match_DVDD_v5.txt $output_dir
cp -v RunPower.py $output_dir | tee -a $log
cp -v test_definitions.py $output_dir | tee -a $log
cp -v LOOP_RUN_POWER_TEST_sid.sh $output_dir | tee -a $log
more $log | grep 'REAL\|---\|Vpre bit\|Vdd bit\|Dvdd bit\|--average\|memoryBlocksNeeded\|missing\|No \|error\|Error\|Invalid' >> $greplog
cp -v $greplog $output_dir


echo "exit"


