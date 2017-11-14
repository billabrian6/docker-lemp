# LEMP Stack for Docker

Docker environment for running Laravel.

## Technology included

* [Nginx](http://nginx.org/)
* [MySQL](http://www.mysql.com/)
* [PHP 7](http://php.net/)
* [Git](https://git-scm.com/download/linux)
* [Composer](https://getcomposer.org/download/)
* [Vim](https://vim.sourceforge.io/download.php)
* [MongoDB](https://www.mongodb.com/)

## Requirements

* [Docker](https://www.docker.com/community-edition)
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

## Create Project

* Create a new Laravel project with Composer
```sh
docker-compose exec --user www-data php composer create-project --prefer-dist laravel/laravel {project-name}
```

## Running

Clone the repository.
Change directory into the cloned project.
Run the following command.

```sh
$ docker-compose up -d
```

## Docker Tips

* Stop all containers
```sh
docker kill $(docker ps -q)
```
* Remove all containers
```sh
docker rm $(docker ps -a -q)
```
* Remove all images
```sh
docker rmi $(docker images -q)
```
* CLI access to php container
```sh
docker-compose exec php /bin/bash
```
* CLI access to php|web|mysql|mongo
```sh
docker exec {php|web|mysql|mongo} /bin/bash
```

