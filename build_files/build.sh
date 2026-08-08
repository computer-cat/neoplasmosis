#!/bin/bash

set -ouex pipefail

#install sunshine copr
dnf5 -y copr enable lizardbyte/stable
dnf5 install -y sunshine

#disable copr repos
dnf5 -y copr disable lizardbyte/stable

#install most other things
dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
dnf install -y fastfetch steam gamescope mangohud tailscale firefox zoxide erofs-utils matugen micro sddm syncthing

systemctl disable plasmalogin.service
systemctl enable sddm.service

