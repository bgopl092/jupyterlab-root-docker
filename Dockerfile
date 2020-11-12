# Dockerfile: JupyterLab container image that runs as root user

# Start from a base Jupyter image
FROM jupyter/scipy-notebook:latest

# Run as root user
USER root

# Install various Python packages
RUN pip install ansible netapp-lib netapp-ontap tabulate

# Create workspace directory
RUN mkdir /workspace

# Run JupyterLab as root user
ENTRYPOINT ["jupyter", "lab", "--notebook-dir=/workspace", "--ip=0.0.0.0", "--allow-root"]
