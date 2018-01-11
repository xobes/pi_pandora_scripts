#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

${DIR}/stop_pandora.sh

screen -c ${DIR}/screenrc -dmS pandora

sleep 1

screen -ls | grep pandora
echo "screen -x pandora"
