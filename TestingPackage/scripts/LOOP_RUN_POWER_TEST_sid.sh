#!/bin/bash

#sidjos@gmail.com, sergo@fnal.gov


log=log_RUN_POWER_TEST_sid.log

timestamp=$(date)
echo $timestamp |tee -a $log


output_dir=/home/sidjoshi/test_sid_2015/VipramMezzFirmware/TestingPackage/sid_output/loop_$timestamp
mkdir output_dir


echo "Starting test..." |tee -a $log


frequency=50
stress=10

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $frequency and stress $stress"

python RunPower.py -b --freq $frequency --NStress $stress --odir output_dir |tee -a $log

timestamp=$(date +%T)
echo $timestamp |tee -a $log



frequency=50
stress=20

timestamp=$(date +%T)
echo $timestamp |tee -a $log
echo "LOOP----Running at frequency $frequency and stress $stress"

python RunPower.py -b --freq $frequency --NStress $stress --odir output_dir |tee -a $log

timestamp=$(date +%T)
echo $timestamp |tee -a $log







echo "...Test End" |tee -a $log

