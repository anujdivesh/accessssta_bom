#!/bin/bash

set -x

# Instructions
#
# Change container_name below to the name of the 
# container which you wish to update then
# run this script.

container_name="ocean-portal-dev"

docker cp update-data $container_name:/git/src/update-data
# docker cp update-data $container_name:/git/git/src/update-data
# docker cp update-data $container_name:/git/changes/update-data
# docker cp update-data $container_name:/git/srv/map-portal/usr/local/bin/update-data
# docker cp update-data $container_name:/srv/map-portal/usr/local/bin/update-data

docker cp calculate_sst.py $container_name:/git/src/
docker exec $container_name chmod a+x /git/src/calculate_sst.py

# docker cp calculate_sst.py $container_name:/git/git/src/
# docker cp calculate_sst.py $container_name:/git/changes/
# docker cp calculate_sst.py $container_name:/git/srv/map-portal/usr/local/bin/
# docker cp calculate_sst.py $container_name:/srv/map-portal/usr/local/bin/

docker cp __init__.py $container_name:/srv/map-portal/usr/local/lib/python2.7/dist-packages/ocean/datasets/__init__.py
# docker cp accesss.py $container_name:/git/git/ocean/datasets/accesss.py
docker cp accesss.py $container_name:/git/ocean/datasets/accesss.py
# docker cp accesss.py $container_name:/git/srv/map-portal/usr/local/lib/python2.7/dist-packages/ocean/datasets/accesss.py
docker cp accesss.py $container_name:/srv/map-portal/usr/local/lib/python2.7/dist-packages/ocean/datasets/accesss.py

# docker exec $container_name mkdir /git/ocean/datasets/accessssst/
docker exec $container_name mkdir /srv/map-portal/usr/local/lib/python2.7/dist-packages/ocean/datasets/accessssst/


docker exec $container_name ln -s /srv/map-portal/usr/local/lib/python2.7/dist-packages/ocean/datasets/accessssst /srv/map-portal/usr/local/lib/python2.7/dist-packages/ocean/datasets/accesssssta


# docker cp accesssssta.py $container_name:/git/ocean/datasets/poamassta/accessssst/
# docker cp accesssssta.py $container_name:/git/git/ocean/datasets/poamassta/accessssst/
docker cp accesssssta.py $container_name:/srv/map-portal/usr/local/lib/python2.7/dist-packages/ocean/datasets/accessssst/

docker cp accesssssta-__init__.py $container_name:/srv/map-portal/usr/local/lib/python2.7/dist-packages/ocean/datasets/accessssst/__init__.py

# docker cp accessssstPlotter.py $container_name:/git/ocean/datasets/poamassta/accessssst/
# docker cp accessssstPlotter.py $container_name:/git/git/ocean/datasets/poamassta/accessssst/
docker cp accessssstPlotter.py $container_name:/srv/map-portal/usr/local/lib/python2.7/dist-packages/ocean/datasets/accessssst/

docker cp serverConfig.py $container_name:/srv/map-portal/usr/local/lib/python2.7/dist-packages/ocean/config/

docker cp productName.py $container_name:/srv/map-portal/usr/local/lib/python2.7/dist-packages/ocean/config/


docker cp plotter.py $container_name:/srv/map-portal/usr/local/lib/python2.7/dist-packages/ocean/plotter/

docker cp app.json $container_name:/srv/map-portal/usr/local/share/portal/config/comp/app.json

docker cp dsConf.js $container_name:/srv/map-portal/usr/local/share/portal/js/comp/dsConf.js

# docker cp Ocean.js $container_name:

docker cp setup.py $container_name:/git/

docker cp vargroups.json $container_name:/srv/map-portal/usr/local/share/portal/config/comp/vargroups.json

docker cp datasets.json $container_name:/srv/map-portal/usr/local/share/portal/config/comp/datasets.json

