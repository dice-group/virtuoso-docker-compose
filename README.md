# Virtuoso Docker Compose

This is a small setup to run a virtuoso instance in docker container and load a dataset into it.  
It is intended to be useful for long-term as well as ad-hoc deployments of pre-existing datasets.  
If you want to use virtuoso to compose a dataset, you can still use this setup as a starting point (there is nothing stopping you from modifying the loaded data).

## Usage

### Database location
The database will be created in subdirectory named `database`.  
Since this might grow large, you should clone this repository onto a drive with sufficient capacity.

### Initial Setup
Use the `gen-env.sh` script to generate a `.env` file.  
This will copy env.example and replace the password placeholders with a generated password.  
Should you need a to set a specific password, just copy the file and replace the palceholder yourself.

You can then customize the `.env` file to set memory settings or a custom default query.  
Be aware that the settings in the `.env` file only get applied during the first start of the container. This is a limitation of the virtuoso container.

### Preparing the dataset
Place the dataset you want loaded into the `data` directory.  
Currently `.nt`, `.ttl`, `.nq`, `.owl`, `.rdf`, `.trig`, `.xml` files, as well as their `.gz` and `.bz2` compressed variants are supported.  
(These are just glob matches in load.sql, if you need a different format you can just add it there. Also open an issue / merge request to add it here)

### Starting / stopping the container
Now you can use the usual `docker-compose` (or `docker compose` in newer versions) commands to manage the container.  
Use `docker-compose up -d` to start the container and `docker-compose down` to stop it.  
You can also use `docker-compose up -d --pull` to update the container to a new image version (if it exists).

### Resetting the database
If you ever need to reset the database, simply stop the container and remove the `database` directory (for example using `sudo rm -rf ./database`).

## License
Copyright 2023 DICE Group

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

