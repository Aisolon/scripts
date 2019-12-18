#!/bin/bash

#echo  \"$(playerctl metadata title)\" by $(playerctl metadata artist)

# Based on https://aur.archlinux.org/packages/playerctl/

#INSTANCE="${BLOCK_INSTANCE}"

#if [[ "${INSTANCE}" != "" ]]; then
#  ARGUMENTS="--player ${INSTANCE}"
#fi

ICON_PLAY=""
ICON_PAUSE=""
ICON_STOP=""
CUR_ICON=""

#if [[ "${BLOCK_BUTTON}" -eq 1 ]]; then
#    $(playerctl ${ARGUMENTS} previous)
#elif [[ "${BLOCK_BUTTON}" -eq 2 ]]; then
#    $(playerctl ${ARGUMENTS} play-pause)
#elif [[ "${BLOCK_BUTTON}" -eq 3 ]]; then
#    $(playerctl ${ARGUMENTS} next)
#fi

PLAYER_STATUS=$(playerctl status)
INFO_TITLE=$(playerctl metadata title)
INFO_ALBUM=$(playerctl metadata album)
INFO_ARTIST=$(playerctl metadata artist)

if [[ "${PLAYER_STATUS}" = "Paused" ]]; then
  CUR_ICON="${ICON_PAUSE}"
elif [[ "${PLAYER_STATUS}" = "Playing" ]]; then
  CUR_ICON="${ICON_PLAY}"
else
  CUR_ICON="${ICON_STOP}"
fi

if [[ "${INFO_TITLE}" != "" ]] && [[ "${INFO_ARTIST}" != "" ]]; then
  echo "${CUR_ICON} ${INFO_ARTIST} - ${INFO_TITLE}"
  echo "${CUR_ICON} ${INFO_ARTIST} - ${INFO_TITLE}"
fi