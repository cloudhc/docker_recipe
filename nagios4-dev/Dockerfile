FROM jasonrivers/nagios:latest
MAINTAINER cloudhc
LABEL "purpose"="monitoring"

ADD ./conf/nagios.cfg /opt/nagios/etc
ADD ./conf/commands.cfg /opt/nagios/etc/objects
ADD ./conf/dbs-32.cfg /opt/nagios/etc/objects
ADD ./conf/devops-1.cfg /opt/nagios/etc/objects
ADD ./conf/devops-2.cfg /opt/nagios/etc/objects
ADD ./conf/netargos-79.cfg /opt/nagios/etc/objects
ADD ./conf/netargos-126.cfg /opt/nagios/etc/objects
ADD ./conf/netargos-201.cfg /opt/nagios/etc/objects
ADD ./conf/netargos-202.cfg /opt/nagios/etc/objects
ADD ./conf/tg-2.cfg /opt/nagios/etc/objects

RUN echo 'Done!'
