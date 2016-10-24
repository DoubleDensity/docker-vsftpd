FROM centos

MAINTAINER Buttetsu Batou <doubledense@gmail.com>

# Install deps

RUN yum -y install bash vsftpd ; yum clean all

COPY config/vsftpd.conf /etc/vsftpd/vsftpd-anon.conf

EXPOSE 21 30000-30009

ENTRYPOINT /sbin/vsftpd
