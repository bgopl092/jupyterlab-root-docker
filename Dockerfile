FROM jupyter/scipy-notebook:latest
USER root
RUN apt update -y
RUN apt upgrade -y
RUN adduser --system qninh 
USER qninh
