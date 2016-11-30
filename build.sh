#!/bin/bash

if [ "$1" == "clean" ]; then
	shift
	rm -rf target/{html,pdf}
fi

find src/main/adoc -type f -name '*.adoc' | xargs -n1 ./compile.sh $*

