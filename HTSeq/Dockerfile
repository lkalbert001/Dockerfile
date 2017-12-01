FROM lkalbert001/ubuntu:14.04
#download from docker official website
RUN apt-get update \
	&& wget https://bootstrap.pypa.io/get-pip.py \
	&& python get-pip.py \
	&& pip install HTSeq \
	&& rm get-pip.py \
	&& rm -rf /var/lib/apt/lists/* 
