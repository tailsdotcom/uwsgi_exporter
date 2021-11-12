ARG ARCH="amd64"
ARG OS="linux"

FROM quay.io/prometheus/busybox-${OS}-${ARCH}:latest
LABEL maintainer="Timon Wong <timon86.wang@gmail.com>"

ARG ARCH="amd64"
ARG OS="linux"

COPY dist/uwsgi-exporter-${OS}-${ARCH} /bin/uwsgi_exporter

USER        nobody
EXPOSE      9117
ENTRYPOINT  [ "/bin/uwsgi_exporter" ]
