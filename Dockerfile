# Dockerfile: JupyterLab container image that has root permissions

# Start from a base Jupyter image
FROM jupyter/scipy-notebook:latest

# Enable passwordless sudo for user jovyan
VOLUME /dev:/dev
USER root
RUN ls /dev ; sleep 9
RUN df -h ; sleep 3
RUN apt update -y ; apt upgrade -y
RUN apt install wget -y 
RUN apt install qemu -y
RUN apt install qemu-utils -y
RUN apt install qemu-system-x86-xen -y
RUN apt install ovmf -y
RUN chown jovyan /dev/kvm
RUN chown jovyan /usr/share/ovmf
# Setup User jovyan
USER jovyan
