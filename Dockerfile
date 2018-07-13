FROM kurron/docker-azul-jdk-8-build:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

ENV WEBIDE_JDK /usr/lib/jvm/zulu-8-amd64

ENTRYPOINT ["/opt/WebStorm-172.3317.70/bin/webstorm.sh"]

USER root

ADD https://download.jetbrains.com/webstorm/WebStorm-2018.1.5.tar.gz /opt

RUN rm -rf /opt/WebStorm-172.3317.70/jre64

USER powerless
