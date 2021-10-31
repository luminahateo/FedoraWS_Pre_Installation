#!/bin/sh

#Codecs_Media
dnf install -y gstreamer-ffmpeg gstreamer-plugins-bad gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly
dnf install -y gstreamer1-plugins-{base,good,bad-free,good-extras,bad-free-extras} gstreamer1-plugin-mpg123
dnf install -y gstreamer1-libav gstreamer1-plugins-{bad-freeworld,ugly}
