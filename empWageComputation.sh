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


echo "------------UC2,UC3-----------"

EmpWagePerHour=20;



if [ 1 -eq $randomCheck ]
then
	echo "employee is part time and part times hours are  8"
        empHours=8;
elif [ 0 -eq $randomCheck ]
then
	echo "employee is full time and full times hours are  16"
	empHours=16;
	
else
        empHours=0;
fi

salary=$(( $EmpWagePerHour * $empHours ));
echo "Employee Wage is $salary for one day"

