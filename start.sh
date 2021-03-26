#!/bin/sh

./health-check.sh&

API_KEY=$(gcloud secrets versions access latest --secret="COINBASE_API_KEY")
API_SECRET=$(gcloud secrets versions access latest --secret="COINBASE_API_SECRET")
API_PASS=$(gcloud secrets versions access latest --secret="COINBASE_API_PASS")

echo "{
  \"api_url\": \"https://api.pro.coinbase.com\",
  \"api_key\": \"$API_KEY\",
  \"api_secret\": \"$API_SECRET\",
  \"api_pass\": \"$API_PASS\"
}" > config.json

python3 -u moonbot.py \
  --market "$MARKET" \
  --granularity "$GRANULARITY" \
  --sellupperpcnt "$SELLUPPERPCNT" \
  --selllowerpcnt "$SELLLOWERPCNT" \
  --verbose 0 \
  --live 1
