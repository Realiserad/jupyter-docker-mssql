# https://github.com/jupyter/docker-stacks
FROM jupyter/tensorflow-notebook

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root

RUN apt update && \
    apt install -y curl gnupg2 && \
    curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    curl https://packages.microsoft.com/config/ubuntu/22.04/prod.list > /etc/apt/sources.list.d/mssql-release.list && \
    apt update && \
    ACCEPT_EULA=Y apt install -y msodbcsql18 && \
    echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bashrc && \
    source ~/.bashrc && \
    apt -y install python3-pyodbc && \
    pip3 install pyodbc && \
    apt clean