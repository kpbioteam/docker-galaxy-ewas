# galaxy - ewas

FROM bgruening/galaxy-stable:19.01

MAINTAINER kpbioteam, kpbioteam@gmail.com

ENV GALAXY_CONFIG_BRAND EWAS

# Install tools
COPY ewas.yml $GALAXY_ROOT/tools.yaml
RUN install-tools $GALAXY_ROOT/tools.yaml && \
    /tool_deps/_conda/bin/conda clean --tarballs
