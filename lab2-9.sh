#!/bin/bash

while read name number
do
  if [[ "$name" == *"$1"* ]]; then
    echo "$name $number"
  fi
done < DB.txt

exit 0;
