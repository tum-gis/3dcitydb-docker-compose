# 3DCityDB Web Map + Cesium Terrain Server

This folder contains an example `docker-compose.yml` file for running a [3DCityDB Web Map Client](https://github.com/3dcitydb/3dcitydb-web-map) and a [Cesium Terrain Server](https://github.com/geo-data/cesium-terrain-server). The combination of the two services allows for hosting and visualizing Cesium terrain tiles and 3D city model data.

## Pull the 3DCityDB images

This ensures you are running the latest version of each image.

```bash
docker pull tumgis/3dcitydb-web-map
docker pull geodata/cesium-terrain-server
```

### Download the service configuration file

Download the `docker-compose.yml` from this repo using...

* `git`:  

    ```bash
    git clone https://github.com/tum-gis/3dcitydb-docker-compose
    cd 3dcitydb-docker-compose/web-map+cesium-terrain-server
    ```
* ...or `wget`:

   ```bash
   wget https://raw.githubusercontent.com/tum-gis/3dcitydb-docker-compose/cesium-terrain-server/web-map%2Bcesium-terrain-server/docker-compose.yml
   ```

* ...or `curl`:

    ```bash
    curl https://raw.githubusercontent.com/tum-gis/3dcitydb-docker-compose/cesium-terrain-server/web-map%2Bcesium-terrain-server/docker-compose.yml -o docker-compose.yml
    ```

## Adapt the service configuration file

Edit the `docker-compose.yml` file according to your needs using the text editor of your choice. You will likely want to:

* Change the 3D-Web-Client data directory  
  `/var/docker/my-test-data:/var/www/data`
* Change the Cesium-Terrain-Server terrain data folder  
  `/var/docker/my-terrain-data:/data/tilesets/terrain`  
  **Note**: Create a fresh folder for each terrain dataset in this folder, e.g. `/var/docker/my-terrain-data:/data/tilesets/terrain/myNewTerrain`.  
  **Do create a nested folder structure! Only terrain tilesets one level below `/data/tilesets/terrain` will be available!**

## Run the 3DCityDB services

Use [`docker-compose up`](https://docs.docker.com/compose/reference/up/) to run the services.

  ```bash
  docker-compose up
  ```

The services should now start. Depending on your machine, this is going to take 30-60s. When all services have started successfully they are reachable here, according to the example file.

### Access city model data

* Form `localhost`:  
  3D-Web-Map-Client: [http://localhost](http://localhost)  
  Cesium Terrain Server: [http://localhost:8080/tilesets/my-tileset](http://localhost:8080/tilesets/my-tileset/layer.json)
* For a host named `myExampleDockerHost.de`:  
  3DCityDB: myExampleDockerHost.de  
  WFS web interface: [http://myExampleDockerHost.de:8080/citydb-wfs/wfsclient](http://myExampleDockerHost.de:8080/citydb-wfs/wfsclient)  
  WFS OGC WFS interface: [http://myExampleDockerHost.de:8080/citydb-wfs/wfs?](http://myExampleDockerHost.de:8080/citydb-wfs/wfs?)  
  3D-Web-Map-Client: [http://myExampleDockerHost.de](http://myExampleDockerHost.de)  

### Access terrain tilesets

Terrain tilesets are accessible as follows. The following examples assume a terrain tileset stored at `/data/tilesets/terrain/myNewTerrain`.

* From `localhost`:
  [http://localhost:8080/tilesets/myNewTerrain](http://localhost:8080/tilesets/myNewTerrain)
* For a host named `myExampleDockerHost.de`: [http://myExampleDockerHost.de:8080/tilesets/myNewTerrain](http://myExampleDockerHost.de:8080/tilesets/myNewTerrain)
