TOKEN="f0231bfde7ce4b52b7027945f1d30576"
NAME="Coffee Place"
LOCATION="Chicago"
ROASTS="Espresso"
AMOUNT="1"
OWNER="625733e5d804729046f88374"
curl "http://localhost:4741/wholesales" \
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
