FROM centos

MAINTAINER Buttetsu Batou <doubledense@gmail.com>

# Install deps

RUN yum -y install vsftpd ; yum clean all

COPY config/vsftpd.conf /etc/vsftpd/vsftpd-anon.conf

RUN echo "background=NO" >> /etc/vsftpd/vsftpd.conf

EXPOSE 21 30000-30009

CMD /sbin/vsftpd
