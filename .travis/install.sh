#!/bin/bash

if [ $TRAVIS_OS_NAME = linux ]; then
    sudo apt-get -qq update
    sudo apt-get install -y build-essential qtbase5-dev qt5-qmake qt5-default libboost-dev libboost-system-dev
else
    brew update
    brew install qt5
    brew link --force qt5
    brew upgrade boost
fi