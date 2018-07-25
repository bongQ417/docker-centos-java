FROM centos:latest

ENV LANG zh_CN.UTF-8
ENV LC_CTYPE zh_CN.UTF-8

ARG JAVA_VERSION=8

RUN yum -y install "java-1.$JAVA_VERSION.0-openjdk" && \
    yum -y install kde-l10n-Chinese && \
    yum -y reinstall glibc-common && \
    yum clean all && \
    rm -rf /var/cache/yum && \
    /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo 'Asia/Shanghai' >/etc/timezone

CMD ["/bin/bash"]