#!/bin/bash

cd ~/Library/Developer/CoreSimulator/Devices/$1

find . -name $2.plist | while read preferencesFile; do
    open $preferencesFile
done