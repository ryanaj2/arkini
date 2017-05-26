:: Concat settings.ini with beacons.ini, write to Game.ini
more +2 "beacons.ini" > "tmp.ini"
copy /b "settings.ini"+"tmp.ini" "Game.ini"
del "tmp.ini"

:: Prettify custom_beacons.beacons and store in beacons.json
python make_json.py
