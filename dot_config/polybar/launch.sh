#!/usr/bin/env bash
#
polybar-msg cmd quit

echo "---" | tee -a /tmp/polybar-primary.log /tmp/polybar-secondary.log
polybar primary-i3 2>&1 | tee -a /tmp/polybar-primary.log && disown
#polybar secondary-i3 2>&1 | tee -a /tmp/polybar-secondary.log && disown
echo "Polybars launched"
