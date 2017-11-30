FROM ubuntu
#download from docker official website
RUN apt-get update \
	&& apt-get install -y python \
	&& apt-get install -y wget \
	&& apt-get install -y gcc \
	&& apt-get install -y python-dev \
	&& apt-get install -y zlib1g-dev libssl-dev \
	&& wget https://bootstrap.pypa.io/get-pip.py \
	&& python get-pip.py \
	&& pip install RSeQC \
	&& rm get-pip.py \
	&& rm -rf /var/lib/apt/lists/* 
CMD ['/bin/bash']
