# Concat settings.ini with beacons.ini, write to Game.ini
cat settings.ini beacons.ini > Game.ini

# Prettify custom_beacons.beacons and store in beacons.json
beacon_data=`cat custom.beacon`
curl --request POST \
  --url https://jsonformatter.curiousconcept.com/process \
  --header 'content-type: application/x-www-form-urlencoded' \
  --data 'jsontemplate=1&jsondata='"$beacon_data" \
  | python3 -c 'import sys, json; print(json.load(sys.stdin)["result"]["jsoncopy"])' > beacons.json
