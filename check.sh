#!/bin/bash
IP="IP or domain"
mail="the email adress that will receive mails"
status=$(fping $IP)
status=$(echo $status | awk '{print $3}')
if [ -e /tmp/status-$IP.txt ]
  then
    laststatus=$(cat /tmp/status-$IP.txt)
    if [[ $laststatus != $status ]]
      then
        echo $status > /tmp/status-$IP.txt
        if [[ $status = "alive" ]]
          then
            echo "Hi, the server $IP is back up." | mail -s "The server $IP is UP !" $mail
        else
          echo "Hi, the server $IP is down." | mail -s "he server $IP is DOWN !" $mail
        fi
    fi
else
  echo $status > /tmp/status-$IP.txt
fi
