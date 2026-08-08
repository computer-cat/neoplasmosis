#!/bin/bash

set -ouex pipefail

mkdir -p /usr/lib/firefox

cd /tmp
git clone --depth 1 https://github.com/angelbruni/Geckium.git
cd Geckium
cp -r 'Firefox Folder' /usr/lib/firefox