FROM lkalber001/ubuntu:latest

MAINTAINER lkalbert001

RUN set -xe \
  && apt-get update \
  && apt-get install -y r-base \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /root
COPY DNAcopy.R /root
RUN Rscript DNAcopy.R 
  
CMD ['/bin/bash']
