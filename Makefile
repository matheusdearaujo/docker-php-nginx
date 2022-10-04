ENVIRONMENT_FILE=.env

default: run

install:
ifeq ($(wildcard $(ENVIRONMENT_FILE)),)
	- @echo O arquivo ".env" não existe;
else
	- docker-compose up -d --build
	- docker exec project-php composer install
	- docker exec project-php php artisan key:generate
	- docker exec project-php php artisan storage:link
	- sudo chown -R 33:33 bootstrap/ storage/
	- docker exec project-php php artisan config:cache
endif

clean:
	- sudo rm -rf vendor
	- docker-compose down
	- docker rmi project_php-fpm

run:
	- docker-compose start
	- docker exec project-php composer install
	- docker exec project-php php artisan config:cache
	- sudo chown -R 33:33 bootstrap/ storage/

start:
	- docker-compose start

stop:
	- docker-compose stop

restart:
	- docker-compose restart
	- docker exec project-php composer install
	- docker exec project-php php artisan config:cache

status:
	- docker-compose ps

bash:
	- docker exec -it project-php bash

bash-server:
	- docker exec -it project-nginx bash
