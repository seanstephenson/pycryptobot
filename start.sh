#!/bin/sh

echo "{
  \"api_url\": \"https://api.pro.coinbase.com\",
  \"api_key\": \"$API_KEY\",
  \"api_secret\": \"$API_SECRET\",
  \"api_pass\": \"$API_PASS\"
}" > config.json

python3 pycryptobot.py \
  --market "$MARKET" \
  --granularity "$GRANULARITY" \
  --sellupperpcnt "$SELLUPPERPCNT" \
  --selllowerpcnt "$SELLLOWERPCNT" \
  --live 1
