FROM lkalbert001/ubuntu:14.04
WORKDIR /root
RUN apt-get update \
        && software='libblas-dev liblapack-dev libgsl0ldbl gfortran samtools' \
        && del='' \
        && apt-get install -y $software \
        && wget https://bootstrap.pypa.io/get-pip.py \
        && python get-pip.py \
        && pip install numpy \
        && pip install scipy \
        && wget https://github.com/alexdobin/STAR/archive/2.5.3a.tar.gz \
        && tar -zxvf 2.5.3a.tar.gz \
        && mv /root/STAR-2.5.3a/bin/Linux_x86_64_static/* /usr/local/bin/ \
        && wget https://sourceforge.net/projects/rnaseq-mats/files/MATS/rMATS.4.0.1.tgz \
        && tar -zxvf rMATS.4.0.1.tgz \
        && wget https://sourceforge.net/projects/rnaseq-mats/files/MATS/testData.tgz \
        && tar -zxvf testData.tgz \
        && rm -rf 2.5.3a.tar.gz \
        && rm -rf STAR-2.5.3a \
        && rm -rf testData* \
        && rm rMATS.4.0.1.tgz \
        && rm get-pip.py \
        && rm -rf /var/lib/apt/lists/*
