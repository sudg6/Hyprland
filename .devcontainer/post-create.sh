#!/bin/bash
set -e

echo "Upgrading CMake to 3.30.0..."
wget https://github.com/Kitware/CMake/releases/download/v3.30.0/cmake-3.30.0-linux-x86_64.tar.gz
tar -xzf cmake-3.30.0-linux-x86_64.tar.gz
sudo cp -r cmake-3.30.0-linux-x86_64/* /usr/local/
rm -rf cmake-3.30.0-linux-x86_64*

echo "CMake version:"
cmake --version

echo "Installing Hyprland dependencies..."
sudo apt-get update
sudo apt-get install -y \
  build-essential \
  git \
  pkg-config \
  libcairo2-dev \
  libpango-1.0-dev \
  libpangocairo-1.0-dev \
  libdrm-dev \
  libxkbcommon-dev \
  libxkbcommon-x11-dev \
  libinput-dev \
  libsystemd-dev \
  libwayland-dev \
  wayland-protocols \
  libpixman-1-dev \
  libglm-dev \
  libglslang-dev \
  libglslang-spirv-dev \
  libgbm-dev \
  libxcursor-dev \
  libxinerama-dev \
  libxrandr-dev \
  libxext-dev \
  libxrender-dev \
  libxfixes-dev \
  libxcomposite-dev \
  libxres-dev \
  libxerrors-dev \
  libre2-dev \
  libmuparser-dev \
  liblcms2-dev \
  libtomlplusplus-dev \
  uuid-dev \
  libgtest-dev \
  lua5.4 \
  liblua5.4-dev

echo "Setup complete! Ready to build Hyprland."