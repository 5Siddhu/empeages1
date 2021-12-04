#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20
totalEmpHrs=0
totalWorkingDays=0

function getWorkingHours()
{
	case $1 in
				$isFullTime)
					empHrs=8
				;;
				$isPartTime)
					empHrs=4
				;;
				*)
					empHrs=0
	esac
}

while [[ $totalEmpHrs -lt $maxRateInMonth
&& $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	getWorkingHours=$((RANDOM%3))
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
totalSalery=$(($totalEmpHrs*$empRatePerHr))

