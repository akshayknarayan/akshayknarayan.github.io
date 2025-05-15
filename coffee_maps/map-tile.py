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

    return (minx, maxx, miny, maxy)

def maptile_url(zoom, x, y):
    return f"https://a.basemaps.cartocdn.com/dark_all/{zoom}/{x}/{y}.png"

def print_map_html(minx, maxx, miny, maxy, annotations):
    def map_tile_img(x, y, left, top):
        return f'<img class="tile" src={maptile_url(13, x, y)} style="left: {left}px; top: {top}px;">'

    imgs = []
    for y_idx, y_tile in enumerate(range(miny, maxy+1)):
        for x_idx, x_tile in enumerate(range(minx, maxx+1)):
            imgs.append(map_tile_img(x_tile, y_tile, x_idx * 256, y_idx * 256))
    imgs = '\n'.join(imgs)

    def annotation_div(left, top, label):
        return f'<div class="annotation" style="left: {left}px; top: {top}px;" data-label="{label}"></div>'

    annotation_divs = []
    for _, name, px in annotations[["Name", "px"]].to_records():
        left, top = px
        annotation_divs.append(annotation_div(left, top, name))
    annotation_divs = '\n'.join(annotation_divs)

    return f'''
        <div class="map-container" style="width={(maxx-minx+1)*256}px; height={(maxy-miny+1)*256}px">
            <div class="map">
            {imgs}
            {annotation_divs}
            </div>
        </div>
    '''

if __name__ == '__main__':
    import pandas as pd
    import sys
    df = pd.read_csv(sys.argv[1])

    def get_coords(c):
        lat, lon = c.split(',')
        return (float(lat), float(lon))
    df['coords'] = df['LatLon'].map(get_coords)

    zoom = 13
    minx, maxx, miny, maxy = get_bounding_tiles(list(df['coords']), zoom)
    print(f"Tile to cover all points at zoom {zoom}: tileX: {minx}-{maxx}, tileY: {miny}-{maxy}")

    df['px'] = df['coords'].map(lambda x:latlon_to_pixel_offset(x[0], x[1], zoom, minx, miny))

    print(df)

    print(print_map_html(minx, maxx, miny, maxy, df))
