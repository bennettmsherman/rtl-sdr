#!/bin/bash

echo sudo apt-get -y install cmake
sudo apt-get install -y cmake

echo sudo apt-get -y install libusb-1.0-0-dev
sudo apt-get install -y  libusb-1.0-0-dev

echo mkdir build
mkdir build

echo cd build
cd build

echo cmake ../ -DINSTALL_UDEV_RULES=ON -DDETACH_KERNEL_DRIVER=ON
cmake ../ -DINSTALL_UDEV_RULES=ON -DDETACH_KERNEL_DRIVER=ON

echo make
make

echo sudo make install
sudo make install

echo sudo ldconfig
sudo ldconfig
