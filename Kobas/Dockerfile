FROM lkalbert001/ubuntu:14.04
MAINTAINER lkalbert001 <lkalbert001@163.com>
WORKDIR /root
RUN apt-get update \
    && apt-get install -y libssl-dev liblzma-dev\
    && apt-get install -y r-base openjdk-7-jdk \
    && wget https://ftp.pcre.org/pub/pcre/pcre-8.41.tar.gz \
    && tar -zxvf pcre-8.41.tar.gz  \
    && cd pcre-8.41 && ./configure --enable-utf8 && make && make install && cd /root \
    && wget https://curl.haxx.se/download/curl-7.53.1.tar.gz \
    && tar -zxvf curl-7.53.1.tar.gz \
    && cd curl-7.53.1 && ./configure --prefix=/usr/ && make && make install && cd /root \
    && wget https://cran.r-project.org/src/base/R-3/R-3.4.3.tar.gz \
    && tar -zxvf R-3.4.3.tar.gz \
    && cd R-3.4.3 && ./configure --prefix=/usr/ --enable-R-shlib && make && make install \
    && rm -rf /root/* \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root
COPY R_packages.R /root/
RUN apt-get update \
	&& apt-get install -y python \
	&& devsoft='libxml2-dev libmariadbclient-dev python-dev libsqlite3-dev'  \
	&& apt-get install -y $devsoft \
	&& Rscript R_packages.R \
	&& wget https://bootstrap.pypa.io/get-pip.py \
	&& python get-pip.py \
	&& pip install rpy2==2.8.0 \
	&& pip install pandas \
	&& pip install matplotlib \
	&& pip install biopython \
	&& pip install pysqlite \
	&& wget ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/ncbi-blast-2.7.1+-x64-linux.tar.gz \
	&& tar -zxvf ncbi-blast-2.7.1+-x64-linux.tar.gz \
	&& find ncbi-blast-2.7.1+ -type f -executable| xargs -i  mv {} /usr/local/bin/ \
	&& wget http://kobas.cbi.pku.edu.cn/kobas-2.1.1/kobas-3.0.3.tar.gz \
	&& tar -zxvf kobas-3.0.3.tar.gz \
	&& mv kobas-3.0/docs/kobasrc .kobasrc \
	&& sed -i 's/kobas_home =/kobas_home = \/root\/kobas-3.0/' .kobasrc \
	&& sed -i 's/blast_home =/blast_home = \/usr\/local\/bin/' .kobasrc \
	&& rm -rf `ls |grep -v "kobas-3.0"` \
	&& rm -rf kobas-3.0.3.tar.gz \
	&& rm -rf /var/lib/apt/lists/* 

ENV PYTHONPATH /root/kobas-3.0/src:$PYTHONPATH
CMD ["/bin/bash"]

##cat >R_packages.R << EOF
#source("http://bioconductor.org/biocLite.R") 
#biocLite("qvalue") 
#biocLite("GSVA") 
#biocLite("gage")
#biocLite("rtracklayer") 
#biocLite("EnrichmentBrowser") 
#EOF
