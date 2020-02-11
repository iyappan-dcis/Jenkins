#!/bin/bash

url="www.dcis.net/sldfkjhasdlfjkh.html"
status_code=$(curl -o /dev/null --silent --head --write-out '%{http_code}\n' $url)
date=`date`

if [ $status_code -ne "200" ]
then
        echo "Status check failed"
        exit 1
fi
