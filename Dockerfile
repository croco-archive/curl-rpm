FROM centos:7

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
RUN unlink /etc/localtime && ln -s /usr/share/zoneinfo/Japan /etc/localtime

RUN yum -y reinstall glibc-common && yum clean all
RUN localedef -v -c -i ja_JP -f UTF-8 ja_JP.UTF-8; echo "";

RUN yum -y install epel-release
RUN yum -y update && yum clean all

ADD opt /opt
