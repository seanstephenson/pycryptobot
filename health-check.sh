#!/bin/sh

mkdir -p empty
python3 -m http.server $PORT --bind 0.0.0.0 --directory empty
