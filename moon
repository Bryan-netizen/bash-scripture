#!/bin/bash

# Poor mans weather widget
## This app send me weather updates to my telegram app. No need for intrusive weather apps 😎

# Dependancies

## curl
## wttr.in 
## telegram-send



echo "$(curl -s 'wttr.in/Nairobi?format=%m')" | /usr/local/bin/telegram-send --stdin 















