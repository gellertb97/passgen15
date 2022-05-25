#!/bin/bash
cat /dev/random | head -4 | /opt/homebrew/bin/sha384sum | /usr/bin/cut -c 6-20 | /opt/homebrew/bin/basenc --z85
