#!/bin/bash

source $HOME/scripts/env/bin/activate

python3 $HOME/scripts/lyrics.py "$(playerctl metadata artist)" "$(playerctl metadata title)"

deactivate