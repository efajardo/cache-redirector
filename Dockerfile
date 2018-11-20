FROM centos:centos7

RUN yum -y install http://repo.opensciencegrid.org/osg/3.4/osg-3.4-el7-release-latest.rpm && \
    yum -y install epel-release \
                   yum-plugin-priorities && \
    yum -y install cronie && \
    yum -y install xrootd-server --enablerepo=hcc-testing && \
    yum -y install supervisor


RUN mkdir -p /var/log/supervisor
ADD supervisord.conf /etc/supervisord.conf

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"] 