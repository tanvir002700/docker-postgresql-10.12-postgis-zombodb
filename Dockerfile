FROM postgres:10.12

MAINTAINER tanvir002700@gmail.com

RUN apt-get update -y \
    && apt-get install -y postgresql-10-postgis-2.5-scripts \
    curl \
    wget

RUN wget https://www.zombodb.com/releases/v10-1.0.3/zombodb_trusty_pg10-10-1.0.3_amd64.deb
RUN dpkg -i zombodb_trusty_pg10-10-1.0.3_amd64.deb
RUN rm zombodb_trusty_pg10-10-1.0.3_amd64.deb

COPY hstore.sql /docker-entrypoint-initdb.d
COPY postgis.sql /docker-entrypoint-initdb.d
COPY zombodb.sql /docker-entrypoint-initdb.d
