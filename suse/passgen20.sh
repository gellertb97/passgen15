#!/bin/bash
if ((basenc))
then
  echo
else
  zypper install -y coreutils
fi

cat /dev/random | head -4 | sha384sum | cut -c 6-20 | basenc --z85
