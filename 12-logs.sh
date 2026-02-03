#!/bin/bash
USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOG_FILE="/var/log/shell-script/$0.log"
#$0 means name of the script ,here it will be 12-log.sh.log
if [ $USERID -ne 0 ]; then
    echo "please run this sript with root user access"
    exit 1
fi
#mkdir -p : to create parent directory if not exists
#mkdir -p $LOGS_FOLDER means create /var/log/shell-script directory if not exists
mkdir -p $LOGS_FOLDER
#validate means to check whether the command is success or failure
VALIDATE(){    
    if  [$1 -ne 0 ]; then
       echo "$2..... FAILURE" | tee -a $LOGS_FILE
       exit 1
    else
       echo "$2 is ....SUCCESS" | tee -a $LOGS_FILE
    fi
}
#$? =exit status of last executed command
dnf install nginx -y &>> $LOG_FILE
#VALIDATE $? "installing nginx means install NGINX web server"
VALIDATE $? "Installing NGINX"
dnf install mysql -y  &>> $LOG_FILE   
VALIDATE $? "Installing Mysql"
dnf install nodejs -y  &>> $LOG_FILE
VALIDATE $? "Installing Nodejs"
