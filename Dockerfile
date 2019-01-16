FROM debian:latest

RUN groupadd -g 999 appuser && \
    useradd -r -u 999 -g appuser appuser
USER appuser

RUN apt-get update 

RUN DEBIAN_FRONTEND=noninteractive apt-get -y upgrade

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
  git \ 
  libnetcdff-dev \
  libnetcdf-dev \
  netcdf-bin \
  gfortran \
  csh \
  make
