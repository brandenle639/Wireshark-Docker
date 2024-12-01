FROM kalilinux/kali-last-release:latest
ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_FRONTEND teletype
COPY install.sh /install.sh
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
RUN /install.sh || true
RUN rm -r /install.sh
USER wire
WORKDIR /home/wire
ENTRYPOINT ["/entrypoint.sh"]
