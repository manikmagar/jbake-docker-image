
docker build -t javastreets/jbake:base-latest -f base-image/Dockerfile . && \
docker tag javastreets/jbake:base-latest javastreets/jbake:base-2.6.2 && \
docker build -t javastreets/jbake:latest . && \
docker tag javastreets/jbake:latest javastreets/jbake:2.6.2
