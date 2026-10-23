#!/bin/sh
# Print the part of index.html that gets published as a Claude artifact
# (the host supplies <!doctype>, <head> and <body> itself).
# Usage: sh tools/artifact-body.sh > artifact.html
cd "$(dirname "$0")/.." || exit 1
sed -n '/<!-- artifact:start -->/,/<!-- artifact:end -->/p' index.html | sed '1d;$d'
