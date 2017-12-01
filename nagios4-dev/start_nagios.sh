#!/bin/bash

export N4D_HOME=`pwd`
echo $N4D_HOME

mkdir -p conf
cd conf

curl -udevops:x2016 -O "http://10.189.0.3:8081/artifactory/nagios-dev-local/conf/core/nagios.cfg"
curl -udevops:x2016 -O "http://10.189.0.3:8081/artifactory/nagios-dev-local/conf/core/commands.cfg"
curl -udevops:x2016 -O "http://10.189.0.3:8081/artifactory/nagios-dev-local/conf/core/dbs-32.cfg"
curl -udevops:x2016 -O "http://10.189.0.3:8081/artifactory/nagios-dev-local/conf/core/devops-1.cfg"
curl -udevops:x2016 -O "http://10.189.0.3:8081/artifactory/nagios-dev-local/conf/core/devops-2.cfg"
curl -udevops:x2016 -O "http://10.189.0.3:8081/artifactory/nagios-dev-local/conf/core/netargos-79.cfg"
curl -udevops:x2016 -O "http://10.189.0.3:8081/artifactory/nagios-dev-local/conf/core/netargos-126.cfg"
curl -udevops:x2016 -O "http://10.189.0.3:8081/artifactory/nagios-dev-local/conf/core/netargos-201.cfg"
curl -udevops:x2016 -O "http://10.189.0.3:8081/artifactory/nagios-dev-local/conf/core/netargos-202.cfg"
curl -udevops:x2016 -O "http://10.189.0.3:8081/artifactory/nagios-dev-local/conf/core/tg-2.cfg"

cd $N4D_HOME

docker build -t xabyss/nagios4:1.0 .
docker run --name xabyss-nagios4 -p 0.0.0.0:8081:80 xabyss/nagios4:1.0
