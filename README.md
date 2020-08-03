# docker-postgresql-10.12-postgis-zombodb

This Docker image support postgresql with postgis and zombodb.

It's by default support [postgresql](https://hub.docker.com/_/postgres?tab=description) offical image all ENV variable.

Pull image:
```
$ docker pull imaginewarrior/postgres-postgis-zombodb:10.12
```

Run image:
```
$ docker run -d -e POSTGRES_USER=test -e POSTGRES_PASSWORD=test -e POSTGRES_DB=test --name db imaginewarrior/postgres-postgis-zombodb:10.12
```

### For all official postgres image environment settings visit [postgresql documentation](https://hub.docker.com/_/postgres?tab=description)
