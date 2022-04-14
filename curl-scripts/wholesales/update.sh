#!/bin/bash

# API="http://localhost:4741"
# URL_PATH="/examples"
ID="625759731e492f92fd424d5c"
TOKEN="f0231bfde7ce4b52b7027945f1d30576"
ROASTS="Dark"
curl "http://localhost:4741/wholesales/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
    "wholesale": {
      "name": "'"${NAME}"'",
      "location": "'"${LOCATION}"'",
      "roasts": "'"${ROASTS}"'",
      "amount": "'"${AMOUNT}"'"
    }
  }'

echo
