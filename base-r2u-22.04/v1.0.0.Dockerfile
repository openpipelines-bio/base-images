FROM eddelbuettel/r2u:22.04

RUN Rscript -e 'if (!requireNamespace("remotes", quietly = TRUE)) install.packages("remotes")' && \
    Rscript -e 'remotes::install_cran(c("anndata", "BiocManager"), repos = "https://cran.rstudio.com")'

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y libhdf5-dev libgeos-dev python3 python3-pip python3-dev python-is-python3 procps && \
  rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip && \
  pip install --upgrade --no-cache-dir "anndata~=0.8.0" "mudata~=0.2.0" "scanpy~=1.9.2"

LABEL org.opencontainers.image.description "Base image with R and Python"

LABEL org.opencontainers.image.source "https://github.com/openpipelines-bio/base-images"

LABEL org.opencontainers.image.version v1