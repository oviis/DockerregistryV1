# DockerregistryV1
will install a private Dockerregistry V1 as a whole stack 

- If you want to activate SSL certificates for NGINX, you need to provide them over a volume(see docker-compose file) and also change the DNS name accordingly
- you need also create a hashed htpasswd user and PW and change them in the `./nginxDocker/config/htpasswd.conf`
# Installation
- install [docker-compose](https://docs.docker.com/compose/install/) binary and with `docker-compose up`  you will be able to start the whole SW stack: composed by a data-container,redis,docker-registry, frontend and backend

- after running, you can connect over the given https://DNS-NAME:8443, and login with the created User:PW 
