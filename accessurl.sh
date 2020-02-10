#!/bin/bash

url="www.sabrish.com/super.html"
status_code=$(curl -o /dev/null --silent --head --write-out '%{http_code}\n' $url)
date=`date`

if [ $status_code -ne "200" ]
then
        echo "status check failed"
        #You can add further actions here
fi
