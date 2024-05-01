# Sea ice concentration

This recipe takes a geotiff file representing sea ice concentration from [Sea
Ice Index, Version 3](https://nsidc.org/data/g02135/versions/3) dataset
and:

* Scales the data to values of 0-100%. Native data are scaled by 10 (e.g., a
  value of 100% conc is represented as 1000.
* Reprojects the data to EPSG:3413
* Adds internal overviews and compression
