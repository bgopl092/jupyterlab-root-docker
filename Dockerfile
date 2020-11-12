FROM jupyter/scipy-notebook:latest

# Install various Python packages
RUN pip install ansible netapp-lib netapp-ontap tabulate

# Run JupyterLab as root user
USER root
ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root"]
