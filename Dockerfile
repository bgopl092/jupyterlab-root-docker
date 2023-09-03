#
# docker run -d \
# --privileged \
# -v /var/run/libvirt:/var/run/libvirt \
# --name kvm \
# jess/kvm
#
FROM jupyter/scipy-notebook:latest
# Enable passwordless sudo for user jovyan
USER root
# Setup User jovyan
USER jovyan
