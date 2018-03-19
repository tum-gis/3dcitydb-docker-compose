# 3D City Database service orchestration


## 3DCityDB + WFS + Web-Map

1. Pull the 3DcityDB images. This ensures you are running the latest version.
  ```bash
  docker pull tumgis/3dcitydb-postgis
  docker pull tumgis/3dcitydb-wfs
  docker pull tumgis/3dcitydb-web-map
  ```
  
2. Download the `docker-compose.yml` file from this repo.  
  Using git:  
  ```bash
  git clone https://github.com/tum-gis/3dcitydb-compose
  cd 3dcitydb-compose/3dcitydb+wfs+web-map  
  ```
  Or using curl:
  ```
  curl https://raw.githubusercontent.com/tum-gis/3dcitydb-wfs-docker/master/docker-compose.yml -o docker-compose.yml
  ```

3. Run the 3DCityDB services using [`docker-compose`](https://docs.docker.com/compose/).
  ```bash
  docker-compose up
  ```
  