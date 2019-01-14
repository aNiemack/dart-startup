FROM debian:latest

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get upgrade && apt-get install -y \
  git \ 
  libnetcdff-dev \
  netcdf-bin \
  gfortran \
  csh 
