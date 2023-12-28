# cryptography-docker
Docker image for built cryptography

## Image includes
- Alpine
- Cryptography

## Include in your Dockerfile
```Dockerfile
FROM hlf01/cryptography:cryptography41.0.7-python3.8.16-alpine3.17 AS cryptography_builder
FROM python:3.8.16-alpine3.17
...
COPY --from=cryptography_builder /packages /usr/local/lib/python3.8/site-packages
```

## Build from source
```sh
git clone https://github.com/hlf20010508/cryptography-docker.git
cd cryptography-docker
sudo docker build -f Dockerfile -t cryptography --no-cache .
```

## Link
[Docker Hub](https://hub.docker.com/repository/docker/hlf01/cryptography)
