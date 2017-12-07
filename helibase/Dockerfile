FROM lkalbert001/ubuntu:14.04

MAINTAINER lkalbert001 <lkalbert001@163.com>
WORKDIR /root
RUN apt-get update \
	&& apt-get install samtools \
	&& wget https://bootstrap.pypa.io/get-pip.py \
	&& python get-pip.py \
	&& echo -e '#!/bin/bash\nexec "${@:3}"' > /sbin/my_init && chmod +x /sbin/my_init \
	&& rm -rf get-pip.py  \
	&& rm -rf /var/lib/apt/lists/*
