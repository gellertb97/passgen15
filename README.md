# passgen20
Generates 20 char password from /dev/random

Dependencies:
- General:
  - bash
  - coreutils (specifically sha384sum, basenc)
- alpine
  - ash (is suitable substitute for bash)
- debian
  - ruby-ascii85 (substituting for basenc as it.. doesn't exist in coreutils?? 0.o?)
- macOS:
  - brew
