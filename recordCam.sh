#!/bin/bash
# recordCam.sh
# ------------
# This script saves the live video from IP camera to a full-quality mp4 file with audio.
# Files are populated every 15 minutes (900 seconds -t param).
# -----------
# Author: @andreifinski

# The file name with the current timestamp
name="`date +%Y-%m-%d_%H.%M`"

# Where the videos will be saved
path='/video-rec'

# Save the streams using ffmpeg at 30 fps, stopping the capture after 900 seconds (15 minutes). Add more lines if you have more than 2 cameras
ffmpeg -i rtsp://@192.168.0.195/unicast  -c copy -c:a aac -t 900 $path/cam01/$name.mp4 </dev/null >/dev/null 2>/tmp/xiaofang_cam1.log

