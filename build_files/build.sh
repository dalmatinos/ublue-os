#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# docker install
# dnf -y -q --setopt=install_weak_deps=False install dnf-plugins-core
# dnf5 config-manager addrepo --overwrite --save-filename=docker-ce.repo --from-repofile='https://download.docker.com/linux/fedora/docker-ce.repo'
# dnf makecache
# dnf -y -q --best install docker-ce docker-ce-cli containerd.io docker-compose-plugin docker-ce-rootless-extras docker-buildx-plugin docker-model-plugin
# systemctl enable --now docker.service

# this installs a package from fedora repos
dnf5 install -y alacritty 
# this removes unwanted software
dnf5 remove -y Sunshine 


# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
