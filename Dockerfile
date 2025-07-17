FROM ubuntu:20.04

LABEL maintainer="Mihlali Bayi <mihlalibayi1@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y git python3

RUN git clone https://github.com/mihlalibayi/my-first-project.git /usr/share/myimage

RUN mkdir -p /usr/share/myimage/html \
    && echo 'My Docker Image' > /usr/share/myimage/html/index.html

WORKDIR /usr/share/myimage/html

EXPOSE 80

CMD ["python3", "-m", "http.server", "80"]
