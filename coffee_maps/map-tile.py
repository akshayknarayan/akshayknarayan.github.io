import math

def latlon_to_tile(lat, lon, zoom):
    lat_rad = math.radians(lat)
    n = 2.0 ** zoom
    xtile = int((lon + 180.0) / 360.0 * n)
    ytile = int((1.0 - math.log(math.tan(lat_rad) + 1 / math.cos(lat_rad)) / math.pi) / 2.0 * n)
    return xtile, ytile

def latlon_to_pixel_offset(lat, lon, zoom, tile_x, tile_y):
    lat_rad = math.radians(lat)
    n = 2.0 ** zoom
    x = (lon + 180.0) / 360.0 * n * 256
    y = (1.0 - math.log(math.tan(lat_rad) + 1 / math.cos(lat_rad)) / math.pi) / 2.0 * n * 256
    dx = int(x - tile_x * 256)
    dy = int(y - tile_y * 256)
    return dx, dy

def get_bounding_tiles(coords, zoom):
    tiles = [latlon_to_tile(lat, lon, zoom) for lat, lon in coords]
    xs, ys = zip(*tiles)
    minx = min(xs)
    maxx = max(xs)
    miny = min(ys)
    maxy = max(ys)

    return (minx, maxx, miny, maxy), [latlon_to_pixel_offset(lat, lon, zoom, minx, miny) for (lat, lon) in coords]

if __name__ == '__main__':
    import pandas as pd
    df = pd.read_csv("./pvd-coffee-locations.csv")
    coords = [(float(lat), float(lon)) for (lat, lon) in [x.split(',') for x in df["LatLon"]]]

    zoom = 13
    tile_range, annotations = get_bounding_tiles(coords, zoom)
    minx, maxx, miny, maxy = tile_range
    print(f"Tile to cover all points at zoom {zoom}: tileX: {minx}-{maxx}, tileY: {miny}-{maxy}, annotations in px: {annotations}")
