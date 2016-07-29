FROM ubuntu:latest
MAINTAINER Soheil Eizadi

ENV GOLANG_VERSION 1.6

RUN apt-get update -qq && apt-get install -y build-essential git curl

RUN curl -sSL https://storage.googleapis.com/golang/go$GOLANG_VERSION.linux-amd64.tar.gz \
		| tar -v -C /usr/local -xz

ENV PATH /usr/local/go/bin:$PATH

RUN mkdir -p /opt/apigo/src/github.com/seizadi /opt/apigo/bin /opt/apigo/pkg && chmod -R 777 /opt/apigo
ENV GOPATH /opt/apigo
ENV PATH /opt/apigo/bin:$PATH

WORKDIR /opt/apigo
RUN go get github.com/astaxie/beego
RUN go install  github.com/astaxie/beego
RUN go get github.com/beego/bee
RUN go get github.com/seizadi/apigo

# RUN git clone git@github.com:seizadi/apigo.git /opt/apigo/src/github.com/seizadi/apigo

WORKDIR /opt/apigo/src/github.com/seizadi/apigo

#CMD [ "bee run" ]
CMD bash