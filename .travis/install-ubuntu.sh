#!/bin/bash
#
# This is an install script for Ubuntu-specific packages.
#
set -ex

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y locales
locale-gen en_US.UTF-8

PACKAGES=(git build-essential pkg-config meson clang perl lsb-release)

apt-get install -y "${PACKAGES[@]}"
