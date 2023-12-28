# Use a base image that supports systemd, for example, Ubuntu
FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && \
apt install -y shellinabox && \
apt install -y systemd && \
apt clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN echo 'root:root' | chpasswd
# Expose the web-based terminal port
EXPOSE 8888

# Start shellinabox
CMD ["/usr/bin/shellinaboxd", "-t", "-s", "/:LOGIN"]
