FROM lkalbert001/ubuntu:16.04

RUN apt-get update \
  && apt-get install -y openjdk-8-jdk \
  && rm -rf /var/lib/apt/lists/*

CMD ['/bin/bash']