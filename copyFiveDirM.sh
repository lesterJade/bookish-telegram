#!/bin/bash

source progress_bar.sh

clear
echo -e "\e[32m"
echo ""
echo ""
echo ""


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
	echo ""
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
				./copyFiveDirM.sh
	fi


clear

echo "Date Created: July 6, 2022"
echo "YOU ARE ABOUT TO COPY POS, IORDER,INV, LSUKI, USER"
echo "CREATED BY:PLSI0667 "
sleep 4
	clear
	echo "You Are About To Transfer POS Directory"
	sleep 4
		rsync -P -av 192.168.0.20:/home/manager/main/pos .
	clear
	echo "You Are About To Transfer IORDER Directory"
	sleep 4
		rsync -P -av 192.168.0.20:/home/manager/main/iorder .
	clear
	echo "You Are About To Transfer INV Directory"
		rsync -P -av 192.168.0.20:/home/manager/main/inv .
	sleep 4
	clear
	echo "You Are About To Transfer LSUKI Directory"
		rsync -P -av 192.168.0.20:/home/manager/main/lsuki .
	sleep 4
	clear
	echo "You Are About To Transfer USER Directory"
		rsync -P -av 192.168.0.20:/home/manager/main/user .
	sleep 4
	echo "You Are About To Transfer BRANCH Directory"
		rsync -P -av 192.168.0.20:/home/manager/main/branch .
	sleep 4
	echo "You Are About To Transfer CHAIN Directory"
		rsync -P -av 192.168.0.20:/home/manager/main/chain .
	sleep 4
	echo "You Are About To Transfer UPDATES Directory"
		rsync -P -av 192.168.0.20:/home/manager/main/updates .
	sleep 4
	echo "You Are About To Transfer UTILITY Directory"
		rsync -P -av 192.168.0.20:/home/manager/main/utility .
	sleep 4


#DUPLICATING DATA TO MARK DIRECTORY


	clear
	echo "Duplicating data for Additional Data Backup"
	mkdir mark
	
	cd /home/manager/main/mark
	sleep 4

	clear
	echo "Copying POS to mark Directory. . ."
	sleep 4
		rsync -P -av 192.168.0.20:/home/manager/main/pos .
	clear
	echo "Copying IORDER to mark Directory. . ."
	sleep 4
		rsync -P -av 192.168.0.20:/home/manager/main/iorder .
	clear
	echo "Copying INV to mark Directory. . ."
		rsync -P -av 192.168.0.20:/home/manager/main/inv .
	sleep 4
	clear
	echo "Copying LSUKI to mark Directory. . ."
		rsync -P -av 192.168.0.20:/home/manager/main/lsuki .
	sleep 4

	clear
	echo "Copying Additional Files for Configuration"
	sleep 2
	cd /home/manager/main/pos
	rsync -P -av /root/mdc-script/main/pos/epsonth*.* .
	rsync -P -av /root/mdc-script/main/pos/vfd*.* .
	rsync -P -av /root/mdc-script/main/pos/suppinfo.dat .
	rsync -P -av /root/mdc-script/clear-pos/*.* .



		clear
		echo "Checking Directory List. . ."	
		sleep 5			

#Checking Directory List
tasks_in_total=20
echo ""
echo "POS"
	for current_task in $(seq $tasks_in_total)
	do
		sleep 0.01
		show_progress $current_task $tasks_in_total
	done
echo "IORDER"
	for current_task in $(seq $tasks_in_total)
	do
		sleep 0.01
		show_progress $current_task $tasks_in_total
	done
echo "INV"
	for current_task in $(seq $tasks_in_total)
	do
		sleep 0.01
		show_progress $current_task $tasks_in_total
	done
echo "LSUKI"
	for current_task in $(seq $tasks_in_total)
	do
		sleep 0.01
		show_progress $current_task $tasks_in_total
	done
echo "USER"
	for current_task in $(seq $tasks_in_total)
	do
		sleep 0.01
		show_progress $current_task $tasks_in_total
	done
echo "BRANCH"
	for current_task in $(seq $tasks_in_total)
	do
		sleep 0.01
		show_progress $current_task $tasks_in_total
	done
echo "CHAIN"
	for current_task in $(seq $tasks_in_total)
	do
		sleep 0.01
		show_progress $current_task $tasks_in_total
	done
echo "UPDATES"
	for current_task in $(seq $tasks_in_total)
	do
		sleep 0.01
		show_progress $current_task $tasks_in_total
	done
echo "UTILITY"
	for current_task in $(seq $tasks_in_total)
	do
		sleep 0.01
		show_progress $current_task $tasks_in_total
	done
echo "--DONE--"
echo ""
echo ""
	echo "Cleaning Unecessary files USER/POS . . "
	sleep 3
	echo "Please wait . . . "
	for current_task in $(seq $tasks_in_total)
	do
		sleep 0.01
		show_progress $current_task $tasks_in_total
	done


#Cleaning tmp files at user/pos

		rm -f /home/manager/main/user/pos/???????0.tmp
		rm -f /home/manager/main/user/pos/???????1.tmp
		rm -f /home/manager/main/user/pos/???????2.tmp
		rm -f /home/manager/main/user/pos/???????3.tmp
		rm -f /home/manager/main/user/pos/???????4.tmp
		rm -f /home/manager/main/user/pos/???????5.tmp		
		rm -f /home/manager/main/user/pos/???????6.tmp
		rm -f /home/manager/main/user/pos/???????7.tmp
		rm -f /home/manager/main/user/pos/???????8.tmp
		rm -f /home/manager/main/user/pos/???????9.tmp	
		rm -f /home/manager/main/user/pos/*.gre
		rm -f /home/manager/main/pos/*.gre
		rm -f /home/manager/main/iorder/mode.com
		rm -f /home/manager/main/iorder/que*.* .	

echo ""
	sleep 2
	echo "---D O N E---"

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
		
echo ""
echo ""
echo ""
echo "Removing Script File..."
echo ""
echo ""
sleep 2
rm -f /home/manager/main/copyFiveDirM.sh
rm -f /home/manager/main/progress_bar.sh
