FROM registry.comm.croco:5000/wm_dockerbase/centos7_croco:0.1.0

RUN yum -y install epel-release
RUN yum -y update && yum clean all
RUN yum -y reinstall glibc-common && yum clean all
RUN localedef -v -c -i ja_JP -f UTF-8 ja_JP.UTF-8; echo "";

ADD opt /opt
