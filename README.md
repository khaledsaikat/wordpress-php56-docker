# WordPress on PHP-5.6 using docker

Running WordPress on PHP-5.6 with MySQL-5.7 on Docker container


## Running container
Building image:
`docker-compose build`

Running containers:
`docker-compose up`

Running container in the background -d flag (for “detached” mode)
`docker-compose up -d`

Running with build:
`docker-compose up -d --build`


## Executing bash of wordpress container
`docker-compose exec wordpress bash`


## Stop services
`docker-compose stop`
or
`docker-compose down`


## Access the site:

http://localhost:8080/
