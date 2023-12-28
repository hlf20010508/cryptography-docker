FROM python:3.8.16-alpine3.17 AS cryptography_builder
WORKDIR /packages
RUN apk add --update --no-cache build-base libffi-dev &&\
    pip install -t /packages cffi==1.16.0 pycparser==2.21 cryptography==41.0.7
FROM alpine:3.17
COPY --from=cryptography_builder /packages /packages
