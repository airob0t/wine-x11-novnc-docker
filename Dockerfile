FROM imdjh/wine-x11-novnc-docker
MAINTAINER airobot

# Set correct environment variables
ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ENV DISPLAY :0.0

# Expose Port
EXPOSE 8080

CMD ["/usr/bin/supervisord"]
