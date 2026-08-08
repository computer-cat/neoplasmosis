#!/bin/bash

set -ouex pipefail

mkdir -p /usr/lib/firefox

cd /tmp
git clone --depth 1 https://github.com/angelbruni/Geckium.git
cd Geckium
cd 'Firefox Folder'
cp -r defaults/ /usr/lib64/firefox/
cp config.js /usr/lib64/firefox/