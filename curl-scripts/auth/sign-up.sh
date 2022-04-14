#!/bin/bash

# API="http://localhost:4741"
# URL_PATH="/sign-up"
EMAIL="cj@mail.com"
PASSWORD="hello"
PASSWORD="hello"
curl "http://localhost:4741/sign-up" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
