#!/bin/bash

if [ -f '/usr/bin/ascii85' ]
then
  echo
else
  sudo apt-get install -y ruby-ascii85
fi

cat /dev/random | head -4 | sha384sum | ascii85 | tr -d "\n" | cut -c 6-25
