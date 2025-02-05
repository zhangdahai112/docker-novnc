FROM kvm:base

# Install git, supervisor, VNC, & X11 packages
RUN set -ex; \
    apt-get update; \
    apt-get install -y \
      bash \
      git \
      net-tools \
      novnc \
      supervisor \
      x11vnc \
      xvfb \
      openjdk-8-jre \
      openjdk-8-jre-headless \
      icedtea-plugin \
      ipmitool \
      curl \
      wget \
      vim \
      nodejs

# Setup demo environment variables
ENV HOME=/root \
    DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=C.UTF-8 \
    DISPLAY=:0.0 \
    DISPLAY_WIDTH=1024 \
    DISPLAY_HEIGHT=768

COPY . /app
CMD ["/app/entrypoint.sh"]
EXPOSE 8080
