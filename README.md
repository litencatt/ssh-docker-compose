# ssh-docker-compose-sample
Check ssh configuration using docker container.

## Usage
```
ssh-keygen -t rsa -f id_rsa_docker

docker-compose build
docker-compose up -d

docker-compose exec client bash

# su - client
$ ssh -i .ssh/id_rsa_docker testuser@server
[client@90423183eaed ~]$ ssh -i .ssh/id_rsa_docker testuser@server
Last login: Sun Mar  7 04:05:11 2021 from ssh-docker-compose_client_1.ssh-docker-compose_default
[testuser@3138244c22e4 ~]$
```

### Client
- Install ssh client
- Copy private and  public keys
- Add client user
- Setup ssh

### Server
- Install ssh server
- Copy public key
- Add testuer
- Setup ssh server
