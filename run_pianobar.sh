#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

\rm ~/.config/pianobar/state
${DIR}/stop_pulseaudio.sh

pianobar
