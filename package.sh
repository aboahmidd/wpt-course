#!/bin/bash

cd target
7z a -tzip -mx=9 wpt.zip html pdf/wpt-bundle.pdf ../src/main/js
