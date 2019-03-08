FROM ubuntu:bionic

COPY init /init
COPY container-build /tmp/
RUN /tmp/container-build && rm -f /tmp/container-build

EXPOSE 9000/tcp
EXPOSE 9000/udp

CMD ["/init"]
