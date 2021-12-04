#!/bin/bash -x

isPresent=1
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
	empRatePerHr=20;
	empHrs=8;
	salery=$(($empRatePerHr * $empHrs));
else
	salery=0;
fi
