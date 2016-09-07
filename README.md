**prep_web_shape.sh**

1. takes a shapfile dir (uses ne_10m_land as an example but change to name of file you want to change)
2. clips it to cut off part of Antarctica which would stretch to infinity if projected to web mercator (see this [stackexhange question](https://gis.stackexchange.com/questions/44055/why-do-i-get-failed-to-transform-when-reprojecting-from-wgs84-to-google-mercat) for more info.)
3. Reprojects the clipped file from WGS84 to web mercator for use in web maps.
4. Deletes working and original shapefile.

**prep_web_postgres.sh**

does the same thing as prep_web_shape.sh but converts shapefile into postgres db.

