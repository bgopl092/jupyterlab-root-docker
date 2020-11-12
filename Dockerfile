FROM jupyter/scipy-notebook:latest

RUN pip install ansible netapp-lib netapp-ontap tabulate

USER root
ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root"]
