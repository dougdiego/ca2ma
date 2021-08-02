#!/bin/bash
# https://www.miskatonic.org/2020/06/02/combining-gpx/

(for FILE in gpx/*
 do
     echo -n " -f $FILE"
 done
) > files-to-combine.txt

/Applications/GPSBabelFE.app/Contents/MacOS/gpsbabel  -i gpx -b files-to-combine.txt -o gpx -F ca2ma.gpx

rm files-to-combine.txt

sed -i "s#<name>.*</name>#<name>CA2MA</name>#" ca2ma.gpx