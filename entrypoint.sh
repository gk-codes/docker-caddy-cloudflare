#!/bin/sh -l

echo "Caddy version $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
