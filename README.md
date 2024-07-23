# Projeto Docker MySQL com Schema de Animais

Este projeto cria um container Docker contendo um servidor MySQL, configurado com um schema chamado `animais` e duas tabelas: `tb_penguins_exp` e `tb_penguins_prd`.

## Estrutura de Diretórios

```plaintext
project_root/
│
├── data/
│   ├── tb_penguins_exp.csv
│   └── tb_penguins_prd.csv
├── init.sql
├── Dockerfile
└── docker-compose.yml
```

# Executando o Projeto

Para construir e iniciar o container, execute:

docker-compose build
docker-compose up -d

# Acessando o MySQL dentro do Container

docker exec -it mysql_container mysql -u root -p

# Problemas no paraiso 

Caso, por qualquer razão, seja necessário remover o container e recriar do inicio siga com os passos abaixo:

Recriar as Imagens Docker

docker-compose build

Reiniciar os Serviços

docker-compose up -d

ou

docker ps -a

Encontrei a imagen provavelmente será "mysql_docker_db-mysql" 

docker-compose down

docker rmi nome_da_imagem

docker-compose build
docker-compose up -d

# Arquivo env deve ser removido

O Arquivo env permanece no código para fins de demonstração
Porém em um contexto profissional o mesmo deve ser acrescentado ao gitignore