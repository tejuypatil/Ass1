#!/bin/bash -x


echo "Welcome to Employee Wage Computation"

isPresent=1;
randomCheck=$((RANDOM%2))


if [ $isPresent -eq $randomCheck ]
then
	echo "Emplyoee is present"
else
	echo "Emplyoee is absent"
fi


echo "------------UC2-----------"
EmpWagePerHour=20;
FullDayHour=8;

salary=$(( $EmpWagePerHour * $FullDayHour ));
echo "Employee Wage is $salary for one day"


