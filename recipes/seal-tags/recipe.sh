# WARNING: This is not a real shell script, although it is meant to look and
# feel like one. Each line, unless it starts with #, is interpreted as a
# workflow step.
ogr2ogr -lco ENCODING=UTF-8 -t_srs "EPSG:3413" -makevalid -s_srs "EPSG:4326" -oo X_POSSIBLE_NAMES=Longitude --oo Y_POSSIBLE_NAMES=Latitutde {output_dir}/ct71_ODV_epsg3413.gpkg {input_dir}/ct71_ODV.csv
