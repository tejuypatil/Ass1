#!/bin/bash -x


echo "Welcome to Employee Wage Computation"

isPresent=1;
randomCheck=$((RANDOM%3))


if [ $isPresent -eq $randomCheck ]
then
	echo "Emplyoee is present"
else
	echo "Emplyoee is absent"
fi


echo "------------UC4-----------"

isPartTime=1
isFullTime=2
EmpWagePerHour=20;


case $randomCheck in
$isPartTime)
	empHours=8;;
$isFullTime)
	empHours=16;;
*)
        empHours=0;;
esac

salary=$(( $EmpWagePerHour * $empHours ));
echo "Employee Wage is $salary for one day"

