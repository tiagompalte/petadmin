# PET ADMIN

Projeto construído durante o bootcamp do OneBitCode, de um sistema administrativo baseado em um petshop.

Utilização da gem [FAE](https://www.faecms.com/) para geração dos controles e páginas do sistema administrativo.

* Projeto gerado a partir do docker

`docker run -it --rm --user "$(id -u):$(id -g)" -v "$PWD":/usr/src/app -w /usr/src/app rails rails _5.0.1_ new --skip-bundle petadmin --database=postgresql`

* Para *buildar*

`docker-compose build`

* Para ver funcionando

`docker-compose up`

* Acesse: http://localhost:3000