FROM jupyter/scipy-notebook:latest
USER root
RUN adduser --system --password passwd1 qninh
USER qninh
