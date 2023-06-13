# Base images

Initial release containing the following base images:

* `ghcr.io/openpipelines-bio/base/python_3_10:1.0.0`, a Python 3.10 slim image with the following extra packages preinstalled:
  - Apt: `procps`
  - Python: `anndata~=0.8.0`, `mudata~=0.2.0`, `scanpy~=1.9.2`

* `ghcr.io/openpipelines-bio/base/r2u_22_04:1.0.0`, an R2U 22.04 image with the following extra packages preinstalled:
  - Apt: `python3` and `procps`
  - Python: `anndata~=0.8.0`, `mudata~=0.2.0`, `scanpy~=1.9.2`
  - R: `anndata`