#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

PID=`screen -ls | grep pandora | awk -F '.' '{print $1}' | awk '{print $1}'` 
if [[ "" -ne "$PID" ]]; then
   kill -9 $PID
fi

${DIR}/resume_pulseaudio.sh

sleep 1

screen -wipe
echo "--- done stopping pandora"
