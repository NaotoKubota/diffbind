###############################################################
# Dockerfile to build container images for DiffBind 3.2
# Based on r-base
################################################################

FROM r-base:4.1.1

# File Author / Maintainer
LABEL maintainer="Naoto Kubota <n.kubota@bioreg.kyushu-u.ac.jp>"

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies first
RUN apt-get update -qq && \
    apt-get install -qq -y wget less vim procps \
	libssl-dev libxml2-dev libcurl4-openssl-dev librsvg2-dev r-cran-v8 \
	python3-dev python3-pip && \
    pip3 install argparse && \
    R -e 'install.packages("BiocManager")' && \
    R -e 'BiocManager::install("csaw")' && \
    R -e 'install.packages("argparse", repo = "https://cloud.r-project.org/")'

# Install DiffBind
RUN R -e "BiocManager::install(c('DiffBind'))"

# Set working directory
WORKDIR /home
