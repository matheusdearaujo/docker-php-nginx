Docker PHP-fpm and NGINX
------------
Repository to save docker image with php-fpm and nginx server for php projects (Laravel etc).

Requirements
------------
 - [docker](https://docs.docker.com/get-docker/) e [docker-compose](https://docs.docker.com/compose/)

 Installation
------------

**1. Clone the repository**
```sh
git clone https://github.com/matheusdearaujo/docker-php-nginx.git
```

**2. Change directory**

```sh
cd docker-php-nginx
```

**3. Paste your project in root**

**4. Run docker**
- With Makefile

```sh
 make run
```
- Manually
```sh
 docker-compose up -d --build
 docker exec -it <PROJECT NAME> composer install
```
