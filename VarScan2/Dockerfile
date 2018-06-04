FROM lkalbert001/r-base:latest

MAINTAINER lkalbert001

WORKDIR /opt

COPY DNAcopy.R /opt
RUN set -xe \
	&& apt-get update \
	&& apt-get install -y samtools \
	&& Rscript DNAcopy.R \
	&& rm -rf /var/lib/apt/lists/*

RUN set -xe \
	&& wget https://github.com/dkoboldt/varscan/raw/master/VarScan.v2.4.3.jar \
	&& wget https://github.com/dkoboldt/varscan/raw/master/VarScan.v2.4.3.description.txt

CMD ["/bin/bash"]
