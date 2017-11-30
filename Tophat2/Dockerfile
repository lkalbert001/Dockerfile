FROM lkalbert001/ubuntu:14.04

WORKDIR /root

RUN apt-get update\
        && apt-get install -y bowtie2 \
        && apt-get install -y samtools \
        && apt-get install -y cufflinks \
        && wget http://ccb.jhu.edu/software/tophat/downloads/tophat-2.1.1.Linux_x86_64.tar.gz \
        && tar -zxvf tophat-2.1.1.Linux_x86_64.tar.gz \
        && echo "export PATH=/root/tophat-2.1.1.Linux_x86_64:$PATH" >>/etc/profile \
        && rm -rf tophat-2.1.1.Linux_x86_64.tar.gz \
        && rm -rf /var/lib/apt/lists/*
