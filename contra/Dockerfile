FROM lkalbert001/r-base:3.5.0

MAINTAINER lkalbert001

WORKDIR /opt

RUN set -xe \
	&& apt-get update \
	&& apt-get install -y bedtools samtools \
	&& rm -rf /var/lib/apt/lists/*

COPY DNAcopy.R /opt
RUN set -xe \
	&& Rscript DNAcopy.R \
	&& wget https://sourceforge.net/projects/contra-cnv/files/CONTRA.V2.0/CONTRA.v2.0.8.tar.gz \
	&& tar -zxvf CONTRA.v2.0.8.tar.gz \
	&& rm CONTRA.v2.0.8.tar.gz DNAcopy.R

CMD ["/bin/bash"]
