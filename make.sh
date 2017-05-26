# Concat settings.ini with beacons.ini, write to Game.ini
cat settings.ini > Game.ini
tail -n +2 beacons.ini >> Game.ini

# Prettify custom_beacons.beacons and store in beacons.json
python3 make_json.py
