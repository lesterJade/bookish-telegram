#!/bin/bash
#!/usr/bin/env bash
TERMINAL=$(tty)
HEIGHT=10
WIDTH=45
CHOICE_HEIGHT=5
BACKTITLE="All Rights Reserved 2023 Copyright and Created by Mark Lester Lamanilao"
TITLE="Conversion Utility Ver.2023"
#MENU="Select your choice:"

OPTIONS=(1 "Transfer POS,IORDER,INV,LSUKI &USER"
	 2 "Transfer Backup DATE"
	 3 "Clear History Command"
	 4 "Exit")

#while [ "$CHOICE -ne 3" ]; do
CHOICE=$(dialog --clear \
		--backtitle "$BACKTITLE" \
		--title "$TITLE" \
		--menu "$MENU" \
		$HEIGHT $WIDTH $CHOICE_HEIGHT \
		"${OPTIONS[@]}" \
		2>&1 >$TERMINAL)

clear
	if [ "$CHOICE" = 1 ];
		then
			./copyFiveDir.sh
	dialog --begin 10 10 --backtitle "System Information" \
		--title "Message" \
		--msgbox 'All POS, IORDER, INV, LSUKI AND USER Directory has been successfully transfered.' 6 60
			./startConversion.sh
		
	elif [ "$CHOICE" = 2 ]; 
		then
			cd /home/manager/main/backup
			./copyBackUPdate_B.sh
			cd /home/manager/main
	dialog --begin 10 10 --backtitle "System Information" \
		--title "Message" \
		--msgbox 'All BackUp Date Data has been successfully transfered.' 6 60
			./startConversion.sh
	elif [ "$CHOICE" = 3 ]; 
		then
			rm -f /home/manager/main/copyFiveDir.sh
			rm -f /home/manager/main/backup/copyBackUPdate_B.sh
			rm -f /home/manager/main/progress_bar.sh
			rm -f /home/manager/main/backup/progress_bar.sh
			cd /home/manager/main
			history -c

	dialog --begin 10 10 --backtitle "System Information" \
		--title "Message" \
		--msgbox 'All History Command And Script has been cleared successfully.' 6 60
			./startConversion.sh
	else
		dialog --title "Conversion Utility Ver.2023" \
		--backtitle "All Rights Reserved 2023 Copyright and Created by Mark Lester Lamanilao" \
		--yesno "Are you sure you want to exit this program?" 6 60
		response=$?
		case $response in
			0) 
				clear
				rm -f /home/manager/main/startConversion.sh
				exit 1 ;;

			1) ./startConversion.sh ;;
		esac
	fi
#done
