#!/usr/bin/env bash
polybar-msg cmd quit

for monitor in $(xrandr --query | grep "\bconnected" | cut -d " " -f1); do
  echo "Starting on monitor '$monitor'"
  MONITOR="$monitor" polybar primary-i3 &
done

echo "Polybars launched"
