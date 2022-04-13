# sh curl-scripts/index.sh
# API="http://localhost:4741"
# URL_PATH="/wholesales"
# ${API}${URL_PATH}
NAME="Place"
LOCATION="Chicago"
ROASTS="Espresso"
AMOUNT="1"
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
