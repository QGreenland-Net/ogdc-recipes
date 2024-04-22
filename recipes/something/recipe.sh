# WARNING: This is not a real shell script, although it is meant to look and
# feel like one. Each line, unless it starts with #, is interpreted as a
# workflow step. To test, use the `ogdc-workflow-test` program.
gdalwarp -t_srs EPSG:3413 {input} {output} 
gdal_transform ... {output} {input}
