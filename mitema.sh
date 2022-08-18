#!/usr/bin/env bash
#
# Script name: mitemas
# Description: Creates a playlist based of your video directories, for an easier waching experience.
# Dependencies: fzf, mpv, fdfind
# GitLab: https://github.com/Bryan-netizen/bash-scripture/miteimas.sh
# License: https://github.com/Bryan-netizen/bash-scripture/blob/main/LICENSE
# Contributors: Bryan-netizen


set -e
animes="$HOME/Videos/anime" # create a path to your own video sources.
teli="$HOME/Videos/tv"
learn="$HOME/Videos/education"

ani_play="$animes/anime_playlist.txt" # Path to the playlist.
tv_play="$teli/tv_playlist.txt"
edu_play="$learn/education.txt"

printf '%s' 'What would you like to 📺 ? '  # Asking what you would like to watch.
printf '%s' 'Select from :: Anime :: TV :: Eduction' # Make a selection.

read -p '  ' mite # Reads in user input

case $mite in				# Uses input to make the selection, has to match the case selection.
	ani|Ani|anime|Anime)
		mpv --playlist=$ani_play"$(fdfind . -t d $animes | fzf -m > $ani_play)" # Copies dir file name to a playlist and plays with mpv.
		;;
	tv|TV|teli|Teli|Television)
		mpv --playlist=$tv_play"$(fdfind . -t d $teli | fzf -m > $tv_play)"
		;;
	edu|Edu|Education)
		mpv --playlist=$edu_play"$(fdfind . -t f $learn | fzf -m > $edu_play)" # Copies file name to a playlist and plays with mpv
		;;
	*)
		echo you did not make a selection... # Executes if nothing was selected.
esac

EOF
