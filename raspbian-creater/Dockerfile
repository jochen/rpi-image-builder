FROM raspbian-lite

RUN apt-get update && apt-get install -y locales \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

VOLUME ["/buildenv"]

COPY create-raspbian-image /usr/local/bin
COPY prepare-boot /usr/local/bin

RUN apt-get install -y rsync kpartx vim

#RUN rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash", "/usr/local/bin/prepare-boot", "mount"]
CMD ["/bin/bash", "/usr/local/bin/create-raspbian-image"]
CMD ["/bin/bash", "/usr/local/bin/prepare-boot", "umount"]


