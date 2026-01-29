#!/bin/bash

for nc_file in /input_dir/*.nc; do
    base_name=$(basename "$nc_file" .nc)
    
    # Convert NetCDF to GeoTIFF with EPSG:3413
    gdalwarp -t_srs EPSG:3413 \
        -of GTiff \
        -co COMPRESS=LZW \
        "NETCDF:${nc_file}:percent_contribution" \
        "/output_dir/${base_name}_epsg3413.tif"
done
