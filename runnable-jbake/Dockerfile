FROM javastreets/jbake-base

LABEL maintainer="https://manik.magar.me"

# Define environment variables.
ENV BUILD_DATE=03032018
ENV SOURCE=

# Define mount points.
VOLUME ["/site"]

#Build and Serve
CMD jbake -b -s /site /site/output

#Expose default port
EXPOSE 8820
