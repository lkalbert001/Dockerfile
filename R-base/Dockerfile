FROM lkalbert001/ubuntu:14.04

MAINTAINER lkalbert001

WORKDIR /opt

RUN set -xe \
	&& apt-get update \
	&& apt-get install -y libssl-dev liblzma-dev libxt-dev \
	&& apt-get install -y r-base openjdk-7-jdk \
	&& rm -rf /var/lib/apt/lists/*

RUN wget https://curl.haxx.se/download/curl-7.53.1.tar.gz \
	&& tar -zxvf curl-7.53.1.tar.gz \
	&& cd curl-7.53.1 && ./configure --prefix=/usr/ && make && make install && cd /opt \
	&& wget https://cran.r-project.org/src/base/R-3/R-3.5.0.tar.gz \
	&& tar -zxvf R-3.5.0.tar.gz \
	&& cd R-3.5.0 && ./configure --prefix=/usr/ --enable-R-shlib \
	&& make && make install \
	&& rm -rf /opt/*

CMD ["/bin/bash"]
