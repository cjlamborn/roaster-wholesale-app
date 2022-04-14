
TOKEN="f0231bfde7ce4b52b7027945f1d30576"
OLD="hello"
NEW="banana"

curl "http://localhost:4741/change-password" \
  --include \
  --request PATCH \
  --header "Authorization: Bearer ${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLD}"'",
      "new": "'"${NEW}"'"
    }
  }'

echo
