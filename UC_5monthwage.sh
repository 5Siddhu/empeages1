#!/bin/bash -x

isParTime=1
isFullTime=2
totalSalery=0
empRatePerHr=20
numOfWorkingDays=20

for (( day=1; day<=$numOfWorkingDays; day++ ))
do
	empCheck=$(($RANDOM%3))
		case $empCheck in
			$isPartTime)
				empHrs=4
				;;
			$isFullTime)
				empHrs=8
				;;
			*)
				empHrs=0
				;;
		esac
	Salery=$(($empHrs*$empRatePerHr))
	totalSalery=$(($Salery+$totalSalery))
done
