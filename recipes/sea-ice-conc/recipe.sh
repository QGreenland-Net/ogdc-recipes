# WARNING: This is not a real shell script, although it is meant to look and
# feel like one. Each line, unless it starts with #, is interpreted as a
# workflow step.

# First, unscale the data back to percentages (0-100)
gdal_calc.py --calc "A / 10.0" -A /input_dir/*.tif --outfile=/output_dir/sic_as_percents.tif
# Reproject the data from its native EPSG:3411 to EPSG:3413
gdalwarp -t_srs "EPSG:3413" -r bilinear /input_dir/sic_as_percents.tif /output_dir/reprojected.tif
# Add tiling and compression
gdal_translate -co TILED=YES -co COMPRESS=DEFLATE -co PREDICTOR=2 /input_dir/reprojected.tif /output_dir/tiled_and_compressed.tif
# Add overviews for visualization performance
cp /input_dir/tiled_and_compressed.tif /output_dir/with_overviews.tif && gdaladdo -r average /output_dir/with_overviews.tif  2 4 8 16
