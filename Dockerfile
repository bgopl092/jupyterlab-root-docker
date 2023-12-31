# Use a base image that supports systemd, for example, Ubuntu
FROM jupyter/scipy-notebook:latest
USER root
RUN useradd -r sudo
RUN yes root | passwd sudo

USER jovyan
