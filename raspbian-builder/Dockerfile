FROM ubuntu:latest

RUN apt-get update && apt-get install -y locales \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

RUN apt-get install -y binfmt-support qemu qemu-user-static docker.io wget unzip

#RUN rm -rf /var/lib/apt/lists/*
COPY rpi-build-docker-img /usr/local/bin/

COPY binfmts-enable-qemu-arm.sh /usr/local/bin/
CMD ["/bin/bash", "/usr/local/bin/binfmts-enable-qemu-arm.sh"]
CMD ["/bin/bash", "/usr/local/bin/rpi-build-docker-img"]
