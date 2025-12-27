#!/usr/bin/env bash

TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

make build
make clean

git add .

read -p "Enter a message to append to the commit: " USER_MSG
git commit -m "resume: update at $TIMESTAMP - $USER_MSG"

git push origin main