#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
randomCheck=$((RANDOM%3))
case $randomCheck in
			$isparttime)
				empHrs=4
				;;
			$isFullTime)
				empHrs=8
				;;
			*)
				empHrs=0
				;;
esac

salery=$(($empHrs*$empRatePerHr))
