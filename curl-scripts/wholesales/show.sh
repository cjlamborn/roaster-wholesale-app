#!/bin/sh

# API="http://localhost:4741"
# URL_PATH="/examples"
ID="6255de65d56ca646faeefbf5"
TOKEN="6cec79c44a0c5756a3fb40e5fa4cdcab"
# curl --include "http://localhost:4741/wholesales/${ID}"
curl "http://localhost:4741/wholesales/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
