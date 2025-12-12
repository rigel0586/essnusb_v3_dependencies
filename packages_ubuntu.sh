#!/bin/bash

sudo apt-get -y update

#install prerequisites
sudo apt-get -y install cmake
sudo apt-get -y install git
sudo apt-get -y install repo
sudo apt-get -y install sudo

#install packages
sudo apt-get -y install dpkg-dev g++ gcc binutils libx11-dev libxpm-dev libxft-dev libxext-dev libssl-dev cmake fastlink gfortran 
sudo apt-get -y install libtool automake autoconf autotools-dev  python3 build-essential libxmu-dev libxi-dev libgl-dev binutils libglu1-mesa freeglut3-dev

sudo apt-get -y install dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev libxft-dev libxext-dev libssl-dev gfortran libpcre3-dev 
sudo apt-get -y install xlibmesa-glu-dev libglew-dev libftgl-dev libmysqlclient-dev libfftw3-dev libcfitsio-dev graphviz-dev libavahi-compat-libdnssd-dev 
sudo apt-get -y install libldap2-dev libxml2-dev libkrb5-dev libgsl0-dev qtwebengine5-dev

sudo apt-get -y install protobuf-compiler python3-dev python3-numpy subversion doxygen clang-format curl libmotif-dev qttools5-dev

sudo apt-get -y install libtbb-dev libvdt-dev libgif-dev

sudo apt-get -y install libglu1-mesa-dev libgraphviz-dev libgsl-dev  nlohmann-json3-dev libgl2ps-dev liblzma-dev libxxhash-dev liblz4-dev libzstd-dev

sudo apt-get -y install qt3d5-dev qt3d5-examples qt3d5-doc libxmuu-dev 

sudo apt-get -y install libnsl-dev libnsl2

sudo apt-get -y install libreadline-dev libbz2-dev libsqlite3-dev libffi-dev
