#!/bin/bash
while read path; do
  code=$(curl -s -o /dev/null -w "%{http_code}" -k https://192.168.56.101:443/$path)
  if [ "$code" == "200" ] || [ "$code" == "301" ] || [ "$code" == "302" ]; then
    echo "$code - /$path"
    firefox https://192.168.56.101:443/$path/ &
    sleep 1
  fi
done < "$1"


echo "DONE"

