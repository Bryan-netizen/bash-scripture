#!/usr/bin/env bash
curl -s 'wttr.in?format="%l:+%f+%h:humidity:+%p"\n' | awk -F ' '  '{if ($4>=65||$5>=0.2) print $0, "🌧️"}' | telegram-send --stdin
