#!/bin/bash
USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOG_FILE=/var/log/shell-script/$0.log
if [ $USERID -ne 0 ]; then 
   echo "please login with root user access"
   exit 1
fi
mkdir -p $LOGS_FOLDER
VALIDATE(){
    #$1 means exit status of last executed command
    #$2 means message to be displayed
    if [ $1 -ne 0 ]; then
         echo "$2 is...FAILURE" | tee -a $LOGS_FILE
         exit 1
    else
         echo "$2 is.. SUCCESS"
   fi
}
for package in $@ #$@ means all the arguments passed to the script
#nginx mysql node js  all ar e packages
do
    dnf list installed  $package  &>>$LOG_FILE#
    if [ $? -ne 0 ]; then
       echo  "$package not installed, installing now"
       dnf install $package -y &>>$LOG_FILE
       VALIDATE $? "$package installation"
    else
       echo "$package already installed,skipping"
    fi
done


