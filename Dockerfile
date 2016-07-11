FROM centos:7
MAINTAINER "Derick Ostrenko" <dostrenko@gmail.com>
ENV container docker
RUN yum update -y && yum install -y \
  which \
  gcc-c++ \
  make \
  wget
RUN curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -
RUN yum install -y nodejs
WORKDIR /root
RUN wget http://download.redis.io/redis-stable.tar.gz && tar xvzf redis-stable.tar.gz && cd redis-stable && make
EXPOSE 8080
COPY project/ .
CMD node project/app.js

# Build using 'docker build -t gcr.io/spartan-perigee-136623/c7-node:v3 .'
# Run using 'docker run -ti -v /Users/fredeerock/Docker/webstack/mnt:/root/mnt gcr.io/spartan-perigee-136623/c7-node:v3 /bin/bash'
# Run in daemon mode using 'docker run -d -p 8080:8080 gcr.io/spartan-perigee-136623/c7-node:v3'
# Test with 'curl http://localhost:8080'
# Push to Google Cloud using 'gcloud docker push gcr.io/spartan-perigee-136623/c7-node:v3'
