
#!/bin/bash -x


echo "Welcome to Employee Wage Computation"

isPartTime=1
isFullTime=2
EmpWagePerHour=20;
workingDays=20;
totalHours=0;
day=1

while (( day<=$workingDays && totalHours<=100))
do
	randomCheck=$((RANDOM%3));
	case $randomCheck in
	$isPartTime)
		dayType=PartTime
		empHours=4;;
	$isFullTime)
		dayType=FullTime
		empHours=10;;
	*)
		dayType=LeaveTime
        	empHours=0;;
	esac
	totalHours=$(( $totalHours + $empHours ))
	echo "day $day : $dayType : $totalHours"
	day=$(( $day + 1))
done

salary=$(( $EmpWagePerHour * $totalHours ));
echo "Employee Wage is $salary per month"


