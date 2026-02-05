# WARNING: This is not a real shell script, although it is meant to look and
# feel like one. Each line, unless it starts with #, is interpreted as a
# workflow step.

bash -c 'mkdir -p /output_dir && for nc_file in /input_dir/*.nc; do base_name=$(basename "$nc_file" .nc); echo "Processing $nc_file..."; gdalwarp -t_srs EPSG:3413 -of GTiff -co COMPRESS=LZW "NETCDF:${nc_file}:percent_contribution" "/output_dir/${base_name}_epsg3413.tif"; done && echo "Complete! Created $(ls /output_dir/*.tif | wc -l) files"'
