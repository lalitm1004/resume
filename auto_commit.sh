#!/usr/bin/env bash

TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

make build
make clean
git add .
git commit -m "resume: update at $TIMESTAMP"
git push origin main