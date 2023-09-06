#!/bin/bash
clear
echo -e "\e[32m"
echo ""
echo ""

echo "Preparing Script File to Transfer"
echo "THIS IS FOR MAIN SERVER"
echo "Please wait..."
sleep 2

rm -f /root/.ssh/*

rsync -av copyFiveDirM.sh /home/manager/main
rsync -av progress_bar.sh /home/manager/main
rsync -av startConversion.sh /home/manager/main
rsync -av progress_bar.sh /home/manager/main/backup
rsync -av copyBackUPdate_M.sh /home/manager/main/backup

echo ""
echo "---D.  O.  N.  E. ---"

