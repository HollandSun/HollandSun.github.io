#!/bin/sh
# Serve the site locally at http://localhost:8000
cd "$(dirname "$0")/.." || exit 1
python3 -m http.server 8000
