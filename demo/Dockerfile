FROM registry.redhat.io/rhscl/httpd-24-rhel7

MAINTAINER Anthony Green "green@redhat.com"

# Make html directory writeable for the sidecar
USER 0
RUN chmod -R go+rwx /var/www
USER 1001



