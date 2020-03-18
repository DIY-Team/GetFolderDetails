#!/bin/sh

swift build -c release
cd .build/release
cp -f GetFolderDetails /usr/local/bin/vfd
