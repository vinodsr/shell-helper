#!/bin/sh
while true; do
  $@ &
  PID=$!
  inotifywait $1
  kill $PID
done
