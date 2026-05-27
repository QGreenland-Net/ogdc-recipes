# Surface Water Visualization Recipe

This recipe prepares surface water features from the Arctic Data Center dataset
[ Chandi Witharana, Amal Perera, Elias Manos, Mahendra Udawalpola, Anna Liljedahl, & Matthew Jones. (2026). Alaskan Tundra Surface Water Mosaic Detected from Maxar Satellite Imagery (2001-2021). Arctic Data Center. doi:10.18739/A26Q1SK18.](https://arcticdata.io/catalog/view/doi:10.18739/A26Q1SK18) for
OGDC visualization.

The source dataset contains surface water bodies, excluding ocean, detected from
Maxar near-infrared satellite imagery across the Alaskan tundra region. The data
are organized as GeoPackages using the Polar Geospatial Center Mosaic indexing
scheme. Each GeoPackage includes a raster water mask and a vector layer of water
boundaries with polygon water-covered area attributes.

This recipe is tied to the portal request
[Show surface water raster layer, Alaska only](https://github.com/PermafrostDiscoveryGateway/pdg-portal/issues/17).

Dataset summary:
- Temporal coverage: 2001-2021
- Geographic coverage: Alaskan tundra
- Source DOI: `doi:10.18739/A26Q1SK18`
- License: Creative Commons CC0 1.0 Public Domain Dedication

![Viz Workflow overview](https://github.com/PermafrostDiscoveryGateway/viz-workflow/blob/main/docs/images/viz_workflow.png?raw=true)
