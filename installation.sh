#/bin/bash 
USERID=$(id -u)
if [$USERID -ne 0]
then 
    echo "please run this script witj root access"
    exit 1
else
    echo "u are  super user"
 fi

 dnf install mysqll -y 

 if [$? -ne 0]
 then 
     echo "installation of mysql is failure "  
    exit 1
 else
     echo "installation is SUCCESS"