#!/bin/bash
currentPath=$(pwd)
obsidianPath=$0
now=$(date + "yy.mm.dd")
cd $obsidianPath 
git add .
git commit -am "work-macbook sync obsidian notes: $now"
git pull --rebase
git push
git status
cd $currentPath
