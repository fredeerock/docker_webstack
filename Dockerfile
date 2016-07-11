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
ADD project/ .
RUN cd project && npm install
CMD npm start /root/project/app.js
