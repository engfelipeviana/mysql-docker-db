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
