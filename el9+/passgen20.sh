#!/bin/bash

if [ -f '/usr/bin/basenc' ]
then
  echo ''
  cat /dev/random | head -4 | sha384sum | cut -c 6-20 | basenc --z85
else
  echo 'Your system is missing the basenc binary'
  echo 'Please reinstall the coreutils package by running `dnf reinstall coreutils`'
  exit 1
fi
