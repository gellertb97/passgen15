#!/bin/bash
cat /dev/random | head -1 | /usr/bin/base64 | /usr/bin/cut -c 6-20 | /opt/homebrew/bin/basenc --z85
