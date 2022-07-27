default: run

run:
	- docker-compose up -d --build
	- docker exec -it projeto-php composer install
	- docker exec -it projeto-php php artisan key:generate
	- sudo chown -R 33:33 storage/ bootstrap/

start:
	- docker start projeto-nginx projeto-php

stop:
	- docker stop projeto-nginx projeto-php

restart:
	- docker restart projeto-nginx projeto-php

status:
	- docker ps -f name=projeto-nginx
	- docker ps -f name=projeto-php

clean:
	- docker stop projeto-nginx projeto-php
	- docker rm projeto-nginx projeto-php
	- docker rmi nginx projeto_php-fpm

bash:
	- docker exec -it projeto-php bash

bash-server:
	- docker exec -it projeto-nginx bash
