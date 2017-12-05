FROM kalilinux/kali-linux-docker
MAINTAINER cloudhc <cloudhc@gmail.com>

RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list && \
echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && apt-get -y dist-upgrade && apt-get clean
RUN apt-get -y update && \
    apt-get install -y metasploit-framework \
    dnsenum \
    openvas

ADD openvas.sh /root

EXPOSE 9392

CMD ["/bin/bash"]
