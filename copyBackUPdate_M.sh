#!/bin/bash

source progress_bar.sh

clear
echo ""
echo ""
echo ""
echo ""
echo -e " \e[32m"

unset password
mypassword="ratbugasti"

echo ""
printf "%*s\n" 62 "***********	  *****       *****    ******************"
printf "%*s\n" 62 "***********	  *****       *****    ******************"
printf "%*s\n" 43 "****		  *****       *****    *****"
printf "%*s\n" 43 "****		  *****       *****    *****"
printf "%*s\n" 62 "***********	  *****       *****    *****     ********"
printf "%*s\n" 62 "***********	  *****       *****    *****     ********"
printf "%*s\n" 59 "       ****	  *****       *****    *****	    *****"
printf "%*s\n" 59 "       ****	  *****       *****    *****	    *****"
printf "%*s\n" 62 "***********	  *****************    ******************"
printf "%*s\n" 62 "***********	  *****************    ******************"

	echo "			 ----------------------------------"
	 prompt="				Enter Password:" 
	echo "				SOFTWARE UPDATES GROUP   "
	echo "			 ----------------------------------"
	#read password
		while IFS= read -p "$prompt" -r -s -n 1 char
		do
		
			if [[ $char == $'\0' ]]
			then
				break
			fi
				prompt='*'
				password+="$char"
		done
		echo ""
		echo ""
		printf "%*s\n" 47 "Verifying Password. . ."
	sleep 5 &
	PID=$!
	i=1
		sp="/-\|"
		echo -n ' '
		while [ -d /proc/$PID ]
		do
			tput cup 21 47;
			printf "\b${sp:i++%${#sp}:1}"
		done
		

			Password=$password

				if [[ $password == $mypassword ]]
				then
					echo ""
		echo ""
		printf "%*s\n" 48 "A C C E S S      G R A N T E D"
		sleep 4
	else
		echo ""
		echo ""
		printf "%*s\n" 48 "A C C E S S      D E N I E D"
		echo ""
		sleep 2
		printf "%*s\n" 57 "Sorry. . . But You are not allowed to access"
		echo ""
		echo ""
		echo ""
			sleep 3
			clear
				./copyBackUPdate_M.sh
	fi

clear
printf "%*s\n" 60 "Securing Backup Date DATA For Managers PC"
printf "%*s\n" 50 "Date Created: July 6, 2022"
echo ""
echo ""
echo ""
printf "%*s\n" 70 "--Created by:SUG-0667--"
sleep 5

clear
echo "You Are About To Transfer Year 2023 Data"
	rsync -P -av 192.168.0.20:/home/manager/main/backup/????23 .
	sleep 4
	clear
echo "You Are About To Transfer Year 2022 Data"
	rsync -P -av 192.168.0.20:/home/manager/main/backup/????22 .
	sleep 4
	clear
echo "You Are About To Transfer Year 2021 Data"
	rsync -P -av 192.168.0.20:/home/manager/main/backup/????21 .
	sleep 4
	clear
echo "You Are About To Transfer Year 2020 Data"
	rsync -P -av 192.168.0.20:/home/manager/main/backup/????20 .
	sleep 4
	clear
echo "You Are About To Transfer Year 2019 Data"
	rsync -P -av 192.168.0.20:/home/manager/main/backup/????19 .
	sleep 4
	clear
	
echo "You Are About To Transfer Year 2018 Data"
	rsync -P -av 192.168.0.20:/home/manager/main/backup/????18 .
	sleep 4
	clear

		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
printf "%*s\n" 60 "All Requested Data Has Been Backed Up"
sleep 3
clear
		
echo ""
echo ""	

	echo "Final Checking. . ."
	sleep 2
	#Checking Directory List
tasks_in_total=20
echo ""
echo "Data 2023"
	for current_task in $(seq $tasks_in_total)
	do
		sleep 0.01
		show_progress $current_task $tasks_in_total
	done
echo "Data 2022"
	for current_task in $(seq $tasks_in_total)
	do
		sleep 0.01
		show_progress $current_task $tasks_in_total
	done
echo "Data 2021"
	for current_task in $(seq $tasks_in_total)
	do
		sleep 0.01
		show_progress $current_task $tasks_in_total
	done
echo "Data 2020"
	for current_task in $(seq $tasks_in_total)
	do
		sleep 0.01
		show_progress $current_task $tasks_in_total
	done
echo "Data 2019"
	for current_task in $(seq $tasks_in_total)
	do
		sleep 0.01
		show_progress $current_task $tasks_in_total
	done
echo "Data 2018"
	for current_task in $(seq $tasks_in_total)
	do
		sleep 0.01
		show_progress $current_task $tasks_in_total
	done
clear

	echo "Performing Change Mode and Ownership"
	echo ""
#Change Mode Script
#start here
	echo "Change Mode. . ."
	chmod -Rf 0777 /home/manager/main &
	PID=$!
	i=1
		sp="/-\|"
		echo -n ' '
		while [ -d /proc/$PID ]
		do
			tput cup 2 17;
			printf "\b${sp:i++%${#sp}:1}"
		done

echo " D O N E"
#end here

#Change Ownership Script
#start here
	echo "Change Own . . ."
	chown -Rf manager:manager /home/manager/main &
	PID=$!
	i=1
		sp="/-\|"
		echo -n ' '
		while [ -d /proc/$PID ]
		do
			tput cup 3 17;
			printf "\b${sp:i++%${#sp}:1}"
		done

echo " D O N E"
#end here
		sleep 3
		clear

		for (( c=1; c<=100; c++ ))
		do
		clear
		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
		printf "%*s\n" 50 "FINALIZING DATA. . . [$c%]"
		sleep 0.1s
		done
	sleep 2
echo ""
printf "%*s\n" 45 "-- D O N E -- "
sleep 1
echo ""
echo ""
echo "Removing Script File..."
echo ""
sleep 2
rm -f /home/manager/main/backup/copyBackUPdate_M.sh
rm -f /home/manager/main/backup/progress_bar.sh
