# mifos-docker
Mifos X - Docker

1. Build the image

```bash
$ docker build -t com.mx.fintecheando.mifos.centos .
```

2. List the image 

```bash
$ docker image ls | grep mifos
com.mx.fintecheando.mifos.centos                         latest              18d54d617bd7        3 minutes ago       1.08GB
```

3. Run the image

```bash
$ docker run -p 4000:8080 com.mx.fintecheando.mifos.centos
```

4. Verify the running container

```bash
$ docker container ls
```
