FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=root

# Declaración explícita de volumen
VOLUME ["/var/lib/mysql"]

COPY 1_crear_db.sql /docker-entrypoint-initdb.d/
COPY 2_crear_tablas.sql /docker-entrypoint-initdb.d/
COPY 3_crear_relaciones.sql /docker-entrypoint-initdb.d/
COPY 4_insertar_datos.sql /docker-entrypoint-initdb.d/
EXPOSE 3306 