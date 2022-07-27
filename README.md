Docker PHP-fpm e NGINX
------------
Repositório para guardar imagem docker com php-fpm e server nginx para projetos em php (Laravel etc).

Requisitos
------------
 - [docker](https://docs.docker.com/get-docker/) e [docker-compose](https://docs.docker.com/compose/)

 Instalação
------------

**-> Clone o repositório**
```sh
git clone https://github.com/matheusdearaujo/docker-php-nginx.git
```

**-> Entre na pasta do repositório**

```sh
cd docker-php-nginx
```

**-> Cole seu projeto na raiz do repositório**

**-> Rode o docker**
- Com o Makefile

```sh
 make run
```
- Manualmente
```sh
 docker-compose up -d --build
 docker exec -it <NOME DO PROJETO> composer install
```