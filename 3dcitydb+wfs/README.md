# 3DCityDB + WFS
This folder contains an example `docker-compose.yml` file for running a 3DCityDB instance with a Web-Feature-Service (WFS). The services are configured to link the WFS container to the 3DCityDB and use the database as data source. 

#### Pull the 3DCityDB images
This ensures you are running the latest version of each image.
  ```bash
  docker pull tumgis/3dcitydb-postgis
  docker pull tumgis/3dcitydb-wfs
  ```
  
#### Download the service configuration file
Download the `docker-compose.yml` from this repo using...
 * `git`:  
    ```bash
    git clone https://github.com/tum-gis/3dcitydb-docker-compose
    cd 3dcitydb-docker-compose/3dcitydb+wfs
    ```
 * ...or `wget`:
   ```bash
   wget https://raw.githubusercontent.com/tum-gis/3dcitydb-docker-compose/master/3dcitydb%2Bwfs/docker-compose.yml
   ```
 * ...or `curl`:
    ```
    curl https://raw.githubusercontent.com/tum-gis/3dcitydb-docker-compose/master/3dcitydb%2Bwfs/docker-compose.yml -o docker-compose.yml
    ```

#### Adapt the service configuration file
Edit the `docker-compose.yml` file according to your needs using the text editor of your choice. You will likely want to:
  * Set 3DCityDB coordinate reference system (CRS) and it's GML CRS name: `SRID`, `SRSNAME`
  * Change the default database user and password: `POSTGRES_USER`, `POSTGRES_PASSWORD`
    > **Note:** Make sure to change database connections details for the DB and the WFS accordingly!

#### Run the 3DCityDB services 
Use [`docker-compose up`](https://docs.docker.com/compose/reference/up/) to run the services.
  ```bash
  docker-compose up
  ```
The services should now start. Depending on your machine, this is going to take 30-60s. When all services have started successfully they are reachable here, according to the example file.  
* Form `localhost`:  
  3DCityDB: localhost  
  WFS web interface: http://localhost:8080/citydb-wfs/wfsclient  
  WFS OGC WFS interface: http://localhost:8080/citydb-wfs/wfs?  
* For a host named `myExampleDockerHost.de`:  
  3DCityDB: myExampleDockerHost.de  
  WFS web interface: http://myExampleDockerHost.de:8080/citydb-wfs/wfsclient  
  WFS OGC WFS interface: http://myExampleDockerHost.de:8080/citydb-wfs/wfs?  
