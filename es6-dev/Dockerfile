# before
FROM debian:8.9
MAINTAINER cloudhc@gmail.com
LABEL "purpose"="practice"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
	build-essential \
	nodejs \
	npm \
	curl \
	git

FROM node:6.11.2

RUN apt-get update && apt-get install net-tools -y
RUN apt-get update && apt-get install vim -y

RUN npm install -g gulp
RUN npm install -g eslint
