# Dockerfile: JupyterLab container image that has root permissions

# Start from a base Jupyter image
FROM jupyter/scipy-notebook:latest

# Enable passwordless sudo for user jovyan
VOLUME /dev/kvm
USER root
RUN df -h ; sleep 3
