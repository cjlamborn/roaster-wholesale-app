#!/bin/bash

TOKEN="f0231bfde7ce4b52b7027945f1d30576"

curl "http://localhost:4741/sign-out" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
