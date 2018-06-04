FROM lkalbert001/r-base:3.5.0

MAINTAINER lkalbert001

WORKDIR /opt

RUN set -xe \
	&& apt-get update \
	&& apt-get install -y samtools bedtools git \
	&& rm -rf /var/lib/apt/lists/*

COPY R-packages.R /opt
RUN set -xe \
	&& Rscript R-packages.R \ 
	&& rm R-packages.R 

RUN set -xe \
	&& git clone https://github.com/BoevaLab/ONCOCNV.git
	
CMD ["/bin/bash"]
