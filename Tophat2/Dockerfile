FROM lkalbert001/ubuntu:14.04

WORKDIR /root
COPY cufflinks-2.2.1.Linux_x86_64.tar.gz /root
RUN set -e \
	&& apt-get update\
	&& apt-get install -y bowtie2 \
	&& apt-get install -y samtools \
	&& tar zvf cufflinks-2.2.1.Linux_x86_64.tar.gz \
	&& find cufflinks-2.2.1.Linux_x86_64 -type f -executable |xargs -i  mv {} /usr/local/bin/ \

	&& wget http://ccb.jhu.edu/software/tophat/downloads/tophat-2.1.1.Linux_x86_64.tar.gz \
	&& tar -zxvf tophat-2.1.1.Linux_x86_64.tar.gz \
	&& echo "export PATH=/root/tophat-2.1.1.Linux_x86_64:$PATH" >>/etc/profile \
	&& rm -rf tophat-2.1.1.Linux_x86_64.tar.gz  cufflinks-2.2.1.Linux_x86_64* \
	&& rm -rf /var/lib/apt/lists/*

