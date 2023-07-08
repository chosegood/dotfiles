#!/usr/bin/env bash
killall -q polybar
while pgrep -u $UID -x polybar > /dev/null; do sleep 0.5; done

for monitor in $(xrandr --query | grep "\bconnected" | cut -d " " -f1); do
  echo "Starting on monitor '$monitor'"
  MONITOR="$monitor" polybar main &
done

echo "Polybars launched"
