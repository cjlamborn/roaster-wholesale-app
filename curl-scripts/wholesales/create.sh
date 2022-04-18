
curl "https://polar-river-27993.herokuapp.com/wholesales" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "wholesale": {
      "name": "'"${NAME}"'",
      "location": "'"${LOCATION}"'",
      "roasts": "'"${ROASTS}"'",
      "amount": "'"${AMOUNT}"'",
      "owner": "'"${OWNER}"'"
    }
  }'

echo
