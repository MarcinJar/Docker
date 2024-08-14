#!/bin/bash

# Add Env User as root
export USER=root
echo $USER

# Remove old files
rm /tmp/.X0-lock
rm /tmp/.X11-unix/X0

# Start VNC server
tightvncserver :0
