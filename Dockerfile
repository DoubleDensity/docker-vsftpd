FROM centos

MAINTAINER Buttetsu Batou <doubledense@gmail.com>

# Install deps

RUN yum -y install vsftpd ; yum clean all

RUN sed -i.bak 's!listen=NO!listen=YES!g' /etc/vsftpd/vsftpd.conf

RUN sed -i.bak 's!listen_ipv6=YES!listen_ipv6=NO!g' /etc/vsftpd/vsftpd.conf

RUN echo "background=NO" >> /etc/vsftpd/vsftpd.conf
RUN echo "anonymous_enable=YES" >> /etc/vsftpd/vsftpd.conf
RUN echo "write_enable=YES" >> /etc/vsftpd/vsftpd.conf
RUN echo "anon_upload_enable=YES" >> /etc/vsftpd/vsftpd.conf
RUN echo "anon_root=/var/ftp" >> /etc/vsftpd/vsftpd.conf
RUN echo "anon_mkdir_write_enable=YES" >> /etc/vsftpd/vsftpd.conf
RUN echo "xferlog_enable=YES" >> /etc/vsftpd/vsftpd.conf
RUN echo "xferlog_file=/var/log/vsftpd.log" >> /etc/vsftpd/vsftpd.conf
RUN echo "allow_writeable_chroot=YES" >> /etc/vsftpd/vsftpd.conf

EXPOSE 21 30000-30009

CMD chmod -R 777 /var/ftp && /sbin/vsftpd
