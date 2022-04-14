#!/bin/sh

# API="http://localhost:4741/wholesales"
# URL_PATH="/examples"
TOKEN="6cec79c44a0c5756a3fb40e5fa4cdcab"
# curl --include "http://localhost:4741/wholesales"
curl "http://localhost:4741/wholesales" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
