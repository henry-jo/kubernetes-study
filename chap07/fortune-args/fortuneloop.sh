#!/bin/bash
trap "exit" SIGINT
INTERVAL=$1
echo Configured to generate new fortune every $INTERVAL seconds
mkdir -p /var/htdocs
while :
do
    echo $(data) Writing fortune
    /usr/games/fortune > /var/htdocs/index.html
    sleep $INTERVAL
done