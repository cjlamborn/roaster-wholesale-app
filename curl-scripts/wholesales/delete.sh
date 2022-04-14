ID="625759731e492f92fd424d5c"
TOKEN="f0231bfde7ce4b52b7027945f1d30576"

curl "http://localhost:4741/wholesales/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
