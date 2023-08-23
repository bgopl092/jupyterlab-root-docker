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
CMD ["--privileged"]
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
