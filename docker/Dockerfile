FROM apache/superset:latest-dev

USER root

RUN apt update && apt install -y python-dev python3-dev libldap2-dev libsasl2-dev
RUN pip install python-ldap
RUN pip install Authlib

RUN mkdir /etc/ldap
RUN echo "TLS_CACERT	/etc/ssl/certs/ca-certificates.crt" >> /etc/ldap/ldap.conf

COPY docker/ /app/docker/
