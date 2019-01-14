FROM debian:latest

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get upgrade && apt-get install -y \
  git \ 
  libnetcdff-dev \
  netcdf-bin \
  gfortran \
  csh 
