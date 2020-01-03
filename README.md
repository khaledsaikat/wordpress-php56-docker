# WordPress on PHP-5.6 using docker

Running WordPress on PHP-5.6 with MySQL-5.7 on Docker container

## Motivation

- WordPress plugins/themes developers often need to make sure their plugins/themes are also compatible with php5.6
- Official WordPress docker image support start from php7.2


## Running container
Building image
```sh
docker-compose build
```

Running containers:
```sh
docker-compose up
```

Running container in the background -d flag (for “detached” mode)
```sh
docker-compose up -d
```

Running with build:
```sh
docker-compose up -d --build
```


## Executing bash of wordpress container
```sh
docker-compose exec wordpress bash
```


## Stop services
`docker-compose stop`
or
`docker-compose down`


## Access the site:

http://localhost:8080/


## Reference

- https://www.sitepoint.com/how-to-manually-build-docker-containers-for-wordpress/
- https://vsupalov.com/docker-arg-env-variable-guide/
