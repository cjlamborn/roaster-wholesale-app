ID=""
# API="http://localhost:4741"
# URL_PATH="/examples"

curl "http://localhost:4741/wholesales/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
