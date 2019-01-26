# docker-php-apache-starter
This is a simple docker image with apache2 and php7.2.10. It is designed to make development for php projects really easy


## What you will need:
To use this you need the following:

* [docker](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04)
* [docker-compose](https://docs.docker.com/compose/install/)

^Clicking on the links will lead you to installation guides.^

**Make sure that you can run docker without sudo before continuing.**

## Steps for creating and using the container
1. Place all of the php files that you want hosted in the `www/` directory. _Note: this can be done at any time_
2. Run the command `docker-compose up -d --build`
3. Docker will start to build the container. When it's the done the container should be running
4. Navigate to `localhost:8080/<your-php-file-name>`
5. To stop the container from running you can do `docker-compose stop` if you want to stop the container and
`docker-compose down` if you want to stop and delete the container.
6. On subsequent starts you can just run `docker-compose up -d`.
7. If you wish to change the name or location of where your php files are located, go into the `docker-compose.yml`
and change the path before the `:` under volumes.
