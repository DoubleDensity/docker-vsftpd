FROM centos

MAINTAINER Buttetsu Batou <doubledense@gmail.com>

# Install deps

RUN yum -y install vsftpd ; yum clean all

COPY config/vsftpd.conf /etc/vsftpd/vsftpd.conf

CMD /sbin/vsftpd

EXPOSE 21 30000-30009
