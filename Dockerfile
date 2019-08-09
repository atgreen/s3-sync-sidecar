FROM registry.access.redhat.com/ubi8

MAINTAINER Anthony Green "green@redhat.com"

RUN yum install -y python3-pip && pip3 install awscli && yum clean all
COPY ./root /

CMD ["/usr/bin/s3-sync.sh"]



