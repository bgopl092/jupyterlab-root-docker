FROM jupyter/scipy-notebook:latest
USER root
RUN adduser --system qninh
RUN su qninh
