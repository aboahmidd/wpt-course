#!/bin/bash

basedir=$(dirname "$0")
basedir=$(cd "$basedir"; pwd) # this is more portable than readlink
hostbasedir=$(echo "$basedir" | perl -pe 's{^/([a-zA-Z])/}{\1:/}') # adjust for drive letter in case of windows, else does nothing

set -x
perl -pe "s{#BASEDIR#}{$hostbasedir}g" $basedir/bundle.xml.template > $basedir/bundle.xml
