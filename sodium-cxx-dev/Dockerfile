# before
FROM debian:8.9
MAINTAINER cloudhc@gmail.com
LABEL "purpose"="practice"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
	build-essential \
	curl \
	git

RUN apt-get update && apt-get install net-tools -y
RUN apt-get update && apt-get install vim -y
RUN apt-get update && apt-get install -y \
	libboost-all-dev \
	cmake

RUN cd /root && git clone https://github.com/SodiumFRP/sodium-cxx.git \
	&& cd sodium-cxx/ && mkdir -p build && cd build && cmake .. \
	&& make && make install && ldconfig

RUN cd /root
