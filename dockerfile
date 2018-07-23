FROM centos:latest

ARG JAVA_VERSION=8

RUN yum -y install "java-1.$JAVA_VERSION.0-openjdk" && \
    yum clean all && \
    rm -rf /var/cache/yum && \
    echo "Asia/shanghai" > /etc/timezone

CMD /bin/bash