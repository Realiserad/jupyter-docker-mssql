ARG BASE_IMAGE=jupyter/tensorflow-notebook

FROM $BASE_IMAGE

LABEL org.opencontainers.image.source "https://github.com/Realiserad/jupyter-docker-mssql"

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root

ENV MSSQL_DRIVER "ODBC Driver 18 for SQL Server"

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