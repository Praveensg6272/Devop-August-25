#!/bin/bash
services="java tomcat apache2"
for i in $services
do
sudo service $i status
if [ $? -ne 0 ]
then
echo "the $i service is stopped,please take appropriate action" |mail -s "service 
stopped" -c kushalan.com@gmail.com
fi
done

