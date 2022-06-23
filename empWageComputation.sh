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

