FROM anapsix/alpine-java:8

#Build this as javastreets/jbake-base

LABEL maintainer="https://manik.magar.me"

# This is a base image that install and configures JBake.
# Child Dockerfiles can run command `jbake` to bake or anything else.

# Define environment variables.
ENV BUILD_DATE=05252019
ENV JBAKE_HOME=/opt/jbake
ENV JBAKE_USER=jbake
ENV JBAKE_VERSION=2.6.4
ENV PATH ${JBAKE_HOME}/bin:$PATH

# SSL Cert for downloading mule zip
RUN apk --no-cache update && apk --no-cache upgrade && \
    apk --no-cache add ca-certificates && update-ca-certificates && \
    apk --no-cache add openssl && \
    rm -rf /var/cache/apk/*

RUN adduser -D -g "" ${JBAKE_USER} ${JBAKE_USER}

RUN mkdir /opt/jbake-${JBAKE_VERSION} && \
    ln -s /opt/jbake-${JBAKE_VERSION} ${JBAKE_HOME} && \
    chown ${JBAKE_USER}:${JBAKE_USER} -R /opt/jbake*

USER ${JBAKE_USER}

# For checksum, alpine linux needs two spaces between checksum and file name
RUN cd ~ && wget https://dl.bintray.com/jbake/binary/jbake-${JBAKE_VERSION}-bin.zip && \
    unzip ~/jbake-${JBAKE_VERSION}-bin.zip && \
    cd /opt && cp -R ~/jbake-${JBAKE_VERSION}-bin/* ${JBAKE_HOME}/ && \
    rm ~/jbake-${JBAKE_VERSION}-bin.zip && rm -rf ~/jbake-${JBAKE_VERSION}-bin

RUN cd /opt
