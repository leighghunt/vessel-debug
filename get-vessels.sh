#!/bin/bash

while true; do
  rm vessels.geojson
  ogr2ogr -f GeoJSON vessels.geojson "https://devmaps.at.govt.nz/arcgis/rest/services/Hosted/Vessels/FeatureServer/0/query?where=1%3D1&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&distance=&units=esriSRUnit_Foot&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&gdbVersion=&historicMoment=&returnDistinctValues=false&returnIdsOnly=false&returnCountOnly=false&returnExtentOnly=false&orderByFields=mmsi&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&multipatchOption=&resultOffset=&resultRecordCount=&returnTrueCurves=false&sqlFormat=none&f=geojson" OGRGeoJSON
  git commit -am'Auto-Update';git push
  sleep 10
done
