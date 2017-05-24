# Concat settings.ini with beacons.ini, write to Game.ini
cat settings.ini > Game.ini
tail -n +2 beacons.ini >> Game.ini

# Prettify custom_beacons.beacons and store in beacons.json
python3 -c 'import sys, json; open("beacons.json", "w").write(json.dumps(json.loads(open("custom.beacon").read()),indent=2))'
