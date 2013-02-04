#!/bin/bash

START_HERE="/home/ngerakines/projects/";
REPOS=`cat repos.txt`

cd $START_HERE;

for d in $REPOS; do
	if [ -d "$d" ]; then
		cd $d;
		git fetch;
	else
		git clone "git@github.com:ngerakines/$d.git" "$d"
	fi
	cd $START_HERE;
done

