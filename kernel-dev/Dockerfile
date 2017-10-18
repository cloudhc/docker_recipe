# before
FROM debian:8.9
MAINTAINER cloudhc@gmail.com
LABEL "purpose"="practice"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
	build-essential \
	curl \
    libncurses5-dev \
	git

RUN apt-get update && apt-get install net-tools -y
RUN apt-get update && apt-get install vim -y
RUN apt-get update && apt-get install -y \
	libboost-all-dev \
	cmake

RUN cd /root && mkdir -p kernel && cd kernel

RUN cd /root/kernel
