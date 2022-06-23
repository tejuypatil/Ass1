#!/bin/bash -x


echo "Welcome to Employee Wage Computation"

isPartTime=1
isFullTime=2
EmpWagePerHour=20;
workingDays=20;
totalHours=0;

for (( day=1; day<=$workingDays; day++ ))
do
	randomCheck=$((RANDOM%3));
	case $randomCheck in
	$isPartTime)
		dayType=PartTime
		empHours=8;;
	$isFullTime)
		dayType=FullTime
		empHours=16;;
	*)
		dayType=LeaveTime
        	empHours=0;;
	esac
	totalHours=$(( $totalHours + $empHours ))
	echo "day $day : $dayType : $totalHours"
done

salary=$(( $EmpWagePerHour * $totalHours ));
echo "Employee Wage is $salary per month"


