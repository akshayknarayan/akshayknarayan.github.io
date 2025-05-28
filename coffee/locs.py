#!/usr/bin/python3

from geopy.geocoders import Nominatim

geolocator = Nominatim(user_agent="geopy", timeout=3)

if __name__ == '__main__':
    import sys
    for line in sys.stdin:
        address = line.strip()
        r = geolocator.geocode(address)

        if r != None:
            loc = f"\
(make-location #:address \"{address}\" \
               #:latlon \"{round(r.latitude, 4)}, {round(r.longitude, 4)}\")"
            print(loc)
        else:
            print(f"could not locate: {address}")
