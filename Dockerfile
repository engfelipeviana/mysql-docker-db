FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_DATABASE=animais

COPY ./init.sql /docker-entrypoint-initdb.d/
