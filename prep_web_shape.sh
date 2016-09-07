#!/bin/bash

base_file='ne_10m_land' # change to file required

echo "clipping shapefile ${base_file}.shp"
ogr2ogr -f "ESRI Shapefile" ${base_file}_clipped.shp $base_file.shp -clipsrc -180 -85.05 180.00000000000014 85.05
echo "setting ${base_file}_clipped.shp to web mercator projection"
ogr2ogr -t_srs EPSG:3857 ${base_file}_clipped_3857.shp ${base_file}_clipped.shp
echo "cleaning up redundant files"
rm ${base_file}.*
rm ${base_file}_clipped.*
