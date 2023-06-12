FROM python:3.10-slim

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y procps && \
  rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip && \
  pip install --upgrade --no-cache-dir "anndata~=0.8.0" "mudata~=0.2.0" "scanpy~=1.9.2"

LABEL org.opencontainers.image.description "Base image with Python"

LABEL org.opencontainers.image.source "https://github.com/openpipelines-bio/base-images"

LABEL org.opencontainers.image.version v1