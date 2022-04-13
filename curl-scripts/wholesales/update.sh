#!/bin/bash

API="http://localhost:4741"
URL_PATH="/examples"

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
