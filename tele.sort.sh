#!/usr/bin/env bash
for filename in ~/Downloads/Telegram\ Desktop/* ; do
    case "$filename" in
  *.zip) 
        mv *.zip ~/Downloads/Telegram\ Desktop/zipped/ 2>/dev/null 
        ;;
    *.jpg|*.png)
        mv *.jpg *.png ~/Downloads/Telegram\ Desktop/images 2>/dev/null
        ;;
    *.mp3)
        mv *.mp3 ~/Downloads/Telegram\ Desktop/audio 2>/dev/null
        ;;
    *.mp4)
        mv *.mp4 ~/Downloads/Telegram\ Desktop/videos 2>/dev/null
        ;;
    *.pdf|.csv|.json|.xslx)
        mv *.pdf *.csv *.json *.xslx ~/Downloads/Telegram\ Desktop/docs/ 2>/dev/null
        ;;
    esac
done
