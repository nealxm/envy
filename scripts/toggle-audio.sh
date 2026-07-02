#!/usr/bin/env zsh
set -e

headphone="External Headphones"
speaker="MacBook Pro Speakers"
current=$(/opt/homebrew/bin/switchaudiosource -c -t output)

if [ "$current" = "$headphone" ]; then
    /opt/homebrew/bin/switchaudiosource -s "$speaker"
elif [ "$current" = "$speaker" ]; then
    /opt/homebrew/bin/switchaudiosource -s "$headphone"
else
    /opt/homebrew/bin/switchaudiosource -s "$headphone"
fi