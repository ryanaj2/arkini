import sys, json

# Prettify custom_beacons.beacons and store in beacons.json
open("beacons.json", "w").write(json.dumps(json.loads(open("custom.beacon").read()),indent=2))
