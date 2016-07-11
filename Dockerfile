FROM centos:7
MAINTAINER "Derick Ostrenko" <dostrenko@gmail.com>
ENV container docker
RUN yum update -y && yum install -y \
  which \
  gcc-c++ \
  make \
  wget \
  git
RUN curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -
RUN yum install -y nodejs
WORKDIR /root
RUN wget http://download.redis.io/redis-stable.tar.gz && tar xvzf redis-stable.tar.gz && cd redis-stable && make && make install
EXPOSE 8080
COPY project/ /root/project/
RUN cd project && npm install
CMD cd /root/project && npm start
