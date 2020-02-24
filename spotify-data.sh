#!/bin/bash

# echo  \"$(playerctl metadata title)\" by $(playerctl metadata artist)

# Based on https://aur.archlinux.org/packages/playerctl/

# INSTANCE="${BLOCK_INSTANCE}"

# if [[ "${INSTANCE}" != "" ]]; then
#  ARGUMENTS="--player ${INSTANCE}"
# fi

PLAY=""
PAUSE=""
STOP=""
ICON=""

#if [[ "${BLOCK_BUTTON}" -eq 1 ]]; then
#    $(playerctl ${ARGUMENTS} previous)
#elif [[ "${BLOCK_BUTTON}" -eq 2 ]]; then
#    $(playerctl ${ARGUMENTS} play-pause)
#elif [[ "${BLOCK_BUTTON}" -eq 3 ]]; then
#    $(playerctl ${ARGUMENTS} next)
#fi

STATUS=$(playerctl status)
TITLE=$(playerctl metadata title)
ALBUM=$(playerctl metadata album)
ARTIST=$(playerctl metadata artist)

if [[ "${STATUS}" = "Paused" ]]; then
  ICON="${PAUSE}"
elif [[ "${STATUS}" = "Playing" ]]; then
  ICON="${PLAY}"
else
  ICON="${STOP}"
fi

if [[ "${TITLE}" != "" ]] && [[ "${ARTIST}" != "" ]]; then
  echo "${ICON} ${ARTIST} - ${TITLE}"
  echo "${ICON} ${ARTIST} - ${TITLE}"
fi