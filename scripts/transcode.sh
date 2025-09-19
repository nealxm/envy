#!/usr/bin/env zsh
set -e

files=("${(@f)$(fd -e mov -e mp4 -e m4v -e wmv -e avi --type f --search-path '/Users/neal/Library/Mobile Documents/com~apple~CloudDocs/muppidi personal/yPictureArchive/Homevideos')}")

for f in "${files[@]}"; do
    new="${f:r}_out.mp4"

    # ffmpeg -threads 12 -hwaccel videotoolbox -i "$f" -c:v hevc_videotoolbox -b:v 16M -pass 1 -an -f rawvideo -y /dev/null
    ffmpeg -hide_banner -loglevel info -threads 12 -hwaccel videotoolbox -i "$f" -c:v hevc_videotoolbox -profile:v main -tag:v hvc1 -b:v 2M -c:a aac_at "$new"
    exiftool -all= -tagsfromfile "$f" -overwrite_original "$new"
done

osascript -e "display notification \"finished transcode\" with title \"transcode\""

# dvd findings
#
# ../configure --enable-gpl --enable-libdvdnav --enable-libdvdread
# ~/dev/ffmpeg/build/ffmpeg -f dvdvideo -threads 12 -i VIDEO_TS -map 0:v:0 -map 0:a:0 -map_metadata 0 -c:v hevc_videotoolbox -profile:v main -tag:v hvc1 -b:v 2M -c:a aac_at -b:a 64k render.mp4

#TODO: instead of specifying target bitrate, specify quality based on input bitrate