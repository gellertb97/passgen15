#!/bin/ash

## run apk add for coreutils, no interaction needed

apk add coreutils &>/dev/null


## generate password 
## (alpine aarch64 has some weird /dev/random output issues, correcting with 'tr -d' statements for now)

cat /dev/random | head -4 | tr -d '\n' | base64 | tr -d '\n' | cut -c 6-20 | basenc --z85
