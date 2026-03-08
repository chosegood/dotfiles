#!/bin/bash

sleep 0.5

# Get the connector name for a monitor by its description

get_monitor() {
    hyprctl monitors -j | jq -r ".[] | select(.description | contains(\"$1\")) | .name"
}

LG=$(get_monitor "LG Electronics LG HDR 4K 0x0005B5E3")
DELL=$(get_monitor "Dell Inc. DELL U3225QE G3V7784")

if [ -n "$LG" ] && [ -n "$DELL" ]; then
    # Both externals connected
    hyprctl keyword monitor "$LG, 3840x2160@60, 0x0, 2, transform, 1"
    hyprctl keyword monitor "$DELL, 3840x2160@120, 2160x0, 2"
    hyprctl keyword monitor "eDP-2, 2560x1600@165, 6000x0, 1.6"

    # Workspaces - DELL: 1,4,7,10 | LG: 2,5,8 | eDP-1: 3,6,9
    hyprctl keyword workspace "1, monitor:$DELL, default:true"
    hyprctl keyword workspace "2, monitor:$LG, default:true"
    hyprctl keyword workspace "3, monitor:eDP-2, default:true"

    hyprctl keyword workspace "4, monitor:$DELL"
    hyprctl keyword workspace "5, monitor:$LG"
    hyprctl keyword workspace "6, monitor:eDP-2"

    hyprctl keyword workspace "7, monitor:$DELL"
    hyprctl keyword workspace "8, monitor:$LG"
    hyprctl keyword workspace "9, monitor:eDP-2"

    hyprctl keyword workspace "10, monitor:$DELL"

elif [ -n "$LG" ]; then
    # Only LG connected
    hyprctl keyword monitor "$LG, 3840x2160@60, 0x0, 1, transform, 1"
    hyprctl keyword monitor "eDP-2, 2560x1600@165, 2160x0, 1"

    hyprctl keyword workspace "1, monitor:eDP-2, default:true"
    hyprctl keyword workspace "3, monitor:eDP-2"
    hyprctl keyword workspace "5, monitor:eDP-2"
    hyprctl keyword workspace "7, monitor:eDP-2"
    hyprctl keyword workspace "9, monitor:eDP-2"
    hyprctl keyword workspace "10, monitor:eDP-2"
    hyprctl keyword workspace "2, monitor:$LG, default:true"
    hyprctl keyword workspace "4, monitor:$LG"
    hyprctl keyword workspace "6, monitor:$LG"
    hyprctl keyword workspace "8, monitor:$LG"

elif [ -n "$DELL" ]; then
    # Only Dell connected
    hyprctl keyword monitor "$DELL, 3840x2160@120, 0x0, 1"
    hyprctl keyword monitor "eDP-1, 2560x1600@165, 3840x0, 1"

    hyprctl keyword workspace "1, monitor:$DELL, default:true"
    hyprctl keyword workspace "2, monitor:$DELL"
    hyprctl keyword workspace "3, monitor:$DELL"
    hyprctl keyword workspace "4, monitor:eDP-1, default:true"
    hyprctl keyword workspace "5, monitor:eDP-1"

fi
