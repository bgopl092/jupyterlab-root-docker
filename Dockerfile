FROM jupyter/scipy-notebook:latest
USER root
RUN adduser --system qninh
USER qninh
RUN whoami
RUN passwd qninh 
