FROM jupyter/scipy-notebook:latest
USER root
RUN adduser --system qninh --password passwd1
USER qninh
