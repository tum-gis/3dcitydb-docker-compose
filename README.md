# 3D City Database service orchestration

This repo contains `docker-compose.yml` files for automated service orchestration with the [3D City Database (3DCityDB)](https://github.com/3dcitydb) Docker images published on the [@tum-gis](https://github.com/tum-gis) GitHub page.
Currently, Docker images for the [3DCityDB](https://github.com/tum-gis/3dcitydb-docker-postgis), the [3DCityDB Web Feature Service (WFS)](https://github.com/tum-gis/3dcitydb-wfs-docker) and the [3DCityDB Web-Map-Client](https://github.com/tum-gis/3dcitydb-web-map-docker) are availble.

[`Docker-compose`](https://docs.docker.com/compose/) is a tool for defining and running multi-container Docker applications. With Compose, you use a `YAML`/`YML` file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration.

> **Note:** Everything in this repo is in development stage.
> If you experience any problems or have a suggestion/improvement please let me know by creating an issue [here](https://github.com/tum-gis/3dcitydb-docker-compose/issues).

## How to use this repo

Navigate to folder named according to the service configuration you are looking for. You will find the required `YML` file and documentation there. For instance, if you want to run the *full 3DCityDB service stack* consisting of a 3DCityDB instance, a WFS connected to it and the 3D-Web-Map-Client go to folder [`./3dcitydb+wfs+web-map`](3dcitydb+wfs+web-map). Currently, following configurations are available:

* **Full stack:** [3dcitydb+wfs+web-map](3dcitydb+wfs+web-map): 3DCityDB instance with linked WFS and Web-Map Client
* **WFS stack:**  [3dcitydb+wfs](3dcitydb+wfs): 3DCityDB instance with linked WFS

The default workflow with [`Docker-compose`](https://docs.docker.com/compose/) is to download the `docker-compose.yml` configuration file from this repo, adapt the service configuration in the file according to your requirements (e.g. Set the required coordinate reference system (CRS)) and start your services with [`docker-compose up`](https://docs.docker.com/compose/reference/up/).  
Please visit the GitHub pages of the individual images for documentation of all configuration parameters and support.
