FROM lkalbert001/r-base:latest

MAINTAINER lkalbert001

WORKDIR /opt

RUN set -xe \
	&& apt-get update \
	&& apt-get install -y samtools bedtools \
	&& rm -rf /var/lib/apt/lists/*

RUN set -xe \
	&& wget https://github.com/biod/sambamba/releases/download/v0.6.7/sambamba_v0.6.7_linux.tar.bz2 \
	&& tar -jxvf sambamba_v0.6.7_linux.tar.bz2 -C /usr/local/bin/ \
	&& wget https://github.com/BoevaLab/FREEC/archive/v11.4.tar.gz \
	&& tar -zxvf v11.4.tar.gz  && cd FREEC-11.4/src/ \
	&& make && mv freec /usr/local/bin/ && cd /opt \
	&& rm -rf sambamba_v0.6.7_linux.tar.bz2  v11.4.tar.gz

CMD ["/bin/bash"]
