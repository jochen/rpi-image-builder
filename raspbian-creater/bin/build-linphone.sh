#!/bin/bash

cd /

apt-get install -y cmake automake autoconf libtool intltool yasm libasound2-dev libpulse-dev libv4l-dev nasm git libglew-dev

git clone git://git.linphone.org/linphone-desktop.git --recursive

cd linphone-desktop/

./prepare.py no-ui -DENABLE_OPENH264=ON -DENABLE_WEBRTC_AEC=OFF -DENABLE_UNIT_TESTS=OFF -DENABLE_MKV=OFF -DENABLE_FFMPEG=ON -DENABLE_CXX_WRAPPER=OFF -DENABLE_NON_FREE_CODECS=ON -DENABLE_VCARD=OFF -DENABLE_BV16=OFF -DENABLE_V4L=OFF

make -j4

#apt-get install libglew2.1 libgl1 

