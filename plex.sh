#!/bin/bash
###  $0 is a simple bash script to control your Plex client
###
###  Usage: plex [<command>]
###
###  Available commands:
###   up            Navigate up
###   down          Navigate down
###   left          Navigate left
###   right         Navigate right
###   back          Navigate back
###   menu          Open menu
###   select        Select current option
###   rewind        Rewind the playback 
###   bigrewind     Rewind the playback more
###   forward       Rewind the playback 
###   bigforward    Rewind the playback more
###   play          Playback play
###   stop          Playback stop
###   osd           Toggle OSD
###
###  Examples:
###    plex play
###    plex pause
###    plex stop
###

# The IP of the Plex Media Server
SERVER=127.0.0.1

# The IP address of the Plex client that you wish to control
CLIENT=192.168.1.123 

case $1 in
    up)
        COMMAND="navigation/moveUp" 
        ;;
    down)
        COMMAND="navigation/moveDown" 
        ;;
    left)
        COMMAND="navigation/moveLeft" 
        ;;
    right)
        COMMAND="navigation/moveRight" 
        ;;
    select)
        COMMAND="navigation/select" 
        ;;
    menu)
        COMMAND="navigation/contextMenu" 
        ;;
    back)
        COMMAND="navigation/back" 
        ;;
    bigrewind)
        COMMAND="playback/bigStepBack" 
        ;;
    rewind)
        COMMAND="playback/stepBack" 
        ;;
    play)
        COMMAND="playback/play" 
        ;;
    stop)
        COMMAND="navigation/stop" 
        ;;
    forward)
        COMMAND="playback/stepForward" 
        ;;
    bigforward)
        COMMAND="playback/bigStepForward" 
        ;;
    osd)
        COMMAND="navigation/toggleOSD" 
        ;;
    *)
        echo "Unknown command $1"
        grep "^###" $0 | sed -e 's/^###//'
        exit 1
        ;;
esac

URL="http://{$SERVER}:32400/system/players/{$CLIENT}/{$COMMAND}"
wget $URL 2>/dev/null || curl -O $URL
