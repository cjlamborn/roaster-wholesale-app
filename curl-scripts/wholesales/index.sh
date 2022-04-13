#!/bin/sh

# API="http://localhost:4741/wholesales"
# URL_PATH="/examples"

curl "http://localhost:4741/wholesales" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
