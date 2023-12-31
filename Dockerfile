# Use a base image that supports systemd, for example, Ubuntu
FROM jupyter/scipy-notebook:latest
USER root
RUN useradd -r jovyann
RUN yes root | passwd jovyann

USER jovyan
