# Docker learning + docker-compose

## Tecnologias 

- [x] [Docker](https://www.docker.com/get-started)
- [x] [Docker Hub](https://hub.docker.com/)

- [ ] [Docker Compose](https://docs.docker.com/compose/install/)



### API node  

na pasta `./api` para instalar as dependências

```
#npm
npm install

#yarn
yarn
```

***Versão usada - Node 14.17.4***



### Construindo as imagens

na pasta raiz `/` 

```
#mysql
docker build -t mysql-image -f api/db/Dockerfile .

#node
docker build -t node-image -f api/Dockerfile .

#php
docker build -t php-image -f website/Dockerfile .
```



### Rodando os containers

na pasta raiz `/` 

```
#mysql
docker run -d -v $(pwd)/api/db/data:/var/lib/mysql --rm --name mysql-container mysql-image

#node
docker run -d -v $(pwd)/api:/home/node/app -p 9001:9001 --link mysql-container --rm --name node-container node-image

#php
docker run -d -v "$(pwd)/website":/var/www/html -p 8888:80 --link node-container --rm --name php-container php-image
```



### Restore do banco

`docker exec -i mysql-container mysql -uroot -pmarod < api/db/script.sql`

[__comandos usados__](./Comandos-usados.md)


---


## docker compose

`docker-compose up -d`   | inicia o as configurações do arquivo [.yml](./docker-compose.yml)

`docker-compose stop`   | para os containers

### não se esqueça de fazer o restore do banco

`docker exec -i mysql-container mysql -uroot -pmarod < api/db/script.sql`
