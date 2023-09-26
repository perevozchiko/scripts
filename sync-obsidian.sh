#!/bin/bash
currentPath=$(pwd)
obsidianPath=$1
date=$(date '+%Y-%m-%d %H:%M:%S')
cd $obsidianPath 
git add .
git commit -am "work-macbook sync obsidian notes: $date"
git pull --rebase
git push
git status
cd $currentPath
