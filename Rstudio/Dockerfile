FROM rocker/rstudio:latest

MAINTAINER liukai(lkalbert001@163.com)
ENV CRAN_URL https://cloud.r-project.org/
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV TERM=xterm

USER root
WORKDIR /opt/

COPY R-packages.R /opt/
RUN set -xe && Rscript /opt/R-packages.R && rm /opt/R-packages.R

RUN set -e \
      && locale-gen en_US.UTF-8 \
	&& useradd -m -d /home/rstudio -G rstudio-server rstudio \
      && echo rstudio:rstudio | chpasswd

COPY useradd.sh /opt/
RUN set -xe \
	&& bash /opt/useradd.sh \
	&& rm -rf /opt/useradd.sh

EXPOSE 8787
CMD ["/usr/lib/rstudio-server/bin/rserver", "--server-daemonize=0", "--server-app-armor-enabled=0"]
