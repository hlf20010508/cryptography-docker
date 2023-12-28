FROM python:3.8.16-alpine3.17 AS cryptography_builder
RUN apk add --update --no-cache build-base libffi-dev &&\
    pip install -t / cryptography==41.0.7
FROM alpine:3.17
COPY --from=cryptography_builder /cryptography /cryptography
