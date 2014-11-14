#!/bin/sh

IMAGE_NAME="kartoza/geoserver"
SERVER_NAME="kartozaserver"
IMAGE_NAME2="jamesbrink/postgresql"
SERVER_NAME2="postgisserver"


echo "== Trying to download docker image for ${IMAGE_NAME}..."
docker pull ${IMAGE_NAME}
docker pull ${IMAGE_NAME2}

echo "== Killing all existing containers"
docker kill $(docker ps -a -q)
docker rm $(docker ps -a -q)

echo "== Launching postgreSQL image and waiting 2 seconds ..."
docker run --link ${SERVER_NAME2}:db -ti -v /vagrant:/vagrant ${IMAGE_NAME2} sh -c 'exec psql -h "$DB_PORT_5432_TCP_ADDR" -p "$DB_PORT_5432_TCP_PORT" -U postgres -f /vagrant/spatialdb.sql'
docker run --link ${SERVER_NAME2}:db -ti -v /vagrant:/vagrant ${IMAGE_NAME2} sh -c 'exec shp2pgsql -W "LATIN1" -I -s 2154 /vagrant/shapefile/75-.shp public.spatialdb | psql -h "$DB_PORT_5432_TCP_ADDR" -p "$DB_PORT_5432_TCP_PORT" -U postgres -d spatialdb'

docker run --name ${SERVER_NAME2} -p 5432:5432 -d ${IMAGE_NAME2}
docker run --name ${SERVER_NAME} -p 8080:8080 -d ${IMAGE_NAME} --link ${SERVER_NAME2}:${SERVER_NAME}

sleep 6
