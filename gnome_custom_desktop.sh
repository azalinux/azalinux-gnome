#!/bin/bash
dconf load / <skel_settings
mkdir /home/aza/.themes

mkdir /home/aza/.local/share/icons

tar xfv theme/Dark*.* -C /home/aza/.themes
tar xfv theme/Sweet*.* -C /home/aza/.local/share/icons
