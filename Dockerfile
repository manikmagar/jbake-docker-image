FROM javastreets/jbake:base-latest

LABEL maintainer="https://manik.magar.me"

# Define environment variables.
ENV BUILD_DATE=03042018

# Define mount points.
VOLUME ["/site"]

#Build and Serve
CMD jbake -b -s /site /site/output

#Expose default port
EXPOSE 8820
