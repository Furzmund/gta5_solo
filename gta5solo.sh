#!/bin/bash
# Puts you into a public session, alone.

pid=$(ps aux | grep [G]TA5 | awk {'print $2'})

echo Pausing GTA 5
kill -STOP $pid

echo Waiting 10 seconds..
sleep 10

echo Resuming GTA 5
kill -CONT $pid
