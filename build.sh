#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
rpm-ostree install nextcloud-client ripgrep ansible emacs-nw micro btrfs-assistant ibm-plex-fonts-all rsms-inter-fonts google-roboto-fonts jetbrains-mono-fonts-all qjackctl

#### Example for enabling a System Unit File
# systemctl enable tlp.service
