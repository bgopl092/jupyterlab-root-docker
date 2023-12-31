# Use a base image that supports systemd, for example, Ubuntu
FROM jupyter/scipy-notebook:latest
USER root
RUN yes root | passwd root

USER jovyan
