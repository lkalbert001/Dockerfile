FROM lkalbert001/ubuntu:14.04
#download from docker official website
WORKDIR /root
RUN apt-get update \
	&& soft='gcc g++-4.4 autotools-dev automake make' \
	&& apt-get install -y $soft \
	&& ln -s /usr/bin/g++-4.4 /usr/bin/g++ \
	&& wget http://soap.genomics.org.cn/down/msort.tar.gz \
	&& tar -zxvf msort.tar.gz \
	&& mv msort msort_tar \
	&& mv msort_tar/* ./ \
	&& ./autogen.sh \ 
	&& ./configure \
	&& make \
	&& mv ./msort /usr/local/bin/ \
	&& rm -rf ./* \
	&& rm -rf /var/lib/apt/lists/* 
CMD ['/bin/bash']
