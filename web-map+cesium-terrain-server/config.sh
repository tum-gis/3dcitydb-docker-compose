#!/usr/bin/env bash

# default images --------------------------------------------------------------
# 3DCityDB Webclient 
webclImagename=tumgis/3dcitydb-web-map
webclTag=experimental
export webclImage=$webclImagename:$webclTag

# Cesium Terrain Server
terrainServerImagename=geodata/cesium-terrain-server
terrainServerTag=latest
export terrainServerImage=$terrainServerImagename:$terrainServerTag

# Pull images -----------------------------------------------------------------
docker pull $webclImage
docker pull $terrainServerImage

# default folders -------------------------------------------------------------
export dirData=
export dirTerrain=
export dirLog=

# echo current config ---------------------------------------------------------
printf "\nCurrent configuration:\n"
printf "Images:\n"
printf "\t$webclImage\n"
printf "\t$terrainServerImage\n"
printf "Mounts:\n"
printf "\tData dir\t$dirData\n"
printf "\tTerrain dir\t$dirTerrain\n"
printf "\tLog dir\t\t$dirLog\n"
