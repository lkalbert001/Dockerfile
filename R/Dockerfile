FROM lkalbert001/ubuntu:14.04
WORKDIR /root
RUN apt-get update \
	&& apt-get install -y libssl-dev liblzma-dev\
	&& apt-get install -y r-base openjdk-7-jdk \
	&& wget https://curl.haxx.se/download/curl-7.53.1.tar.gz \
	&& tar -zxvf curl-7.53.1.tar.gz \
	&& cd curl-7.53.1 && ./configure --prefix=/usr/ && make && make install && cd /root \
	&& wget https://cran.r-project.org/src/base/R-3/R-3.4.3.tar.gz \
	&& tar -zxvf R-3.4.3.tar.gz \
	&& cd R-3.4.3 && ./configure --prefix=/usr/ && make && make install \
	&& rm -rf /root/* \
	&& rm -rf /var/lib/apt/lists/* 
CMD ["/bin/bash"]
