FROM ubuntu:16.04
MAINTAINER Mbali Bayi "mbalibayi@gmail.com"

RUN apt-get update
RUN apt-get install -y git
RUN git clone https://github.com/mihlalibayi/my-first-project.git

RUN mkdir -p /usr/share/myimage/html
RUN echo 'My Docker Image' > /usr/share/myimage/html/index.html

EXPOSE 80

