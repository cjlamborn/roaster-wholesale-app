curl "https://polar-river-27993.herokuapp.com/sign-out" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
