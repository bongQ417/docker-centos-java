FROM centos:latest

ARG JAVA_VERSION=8

RUN yum -y install "java-1.$JAVA_VERSION.0-openjdk" && \
    yum clean all && \
    rm -rf /var/cache/yum && \
    /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo 'Asia/Shanghai' >/etc/timezone

CMD ["/bin/bash"]