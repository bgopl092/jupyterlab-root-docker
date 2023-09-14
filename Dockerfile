FROM jupyter/scipy-notebook:latest
USER root
RUN apt update -y
RUN apt upgrade -y
RUN adduser -r -u 1003 qninh -p 000000
USER jovyan
