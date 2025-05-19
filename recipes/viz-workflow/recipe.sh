# WARNING: This is not a real shell script, although it is meant to look and
# feel like one. Each line, unless it starts with #, is interpreted as a
# workflow step.

# The tiling workflow divides vector files into tiled vector files 
# according to a specified OGC Two Dimensional Tile Matrix Set
tile=true

# Converts pre-tiled vector output from from the tiling step into a series 
# of GeoTIFFs and web-ready image tiles at a range of zoom levels. 
rasterize=false

# Converts the pre-tiled vector output from the tiling step into a 
# Cesium 3D Tileset for use in interactive web-based maps.
3dtile=false
