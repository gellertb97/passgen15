#!/bin/ash

## run apk add for coreutils, no interaction needed

apk add coreutils &>/dev/null


## generate password

cat /dev/random | head -4 | sha384sum | cut -c 6-20 | basenc --z85
