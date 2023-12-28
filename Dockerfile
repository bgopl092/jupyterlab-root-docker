# Use a base image that supports systemd, for example, Ubuntu
FROM jupyter/scipy-notebook:latest
USER root
RUN echo 'root:root' | chpasswd
