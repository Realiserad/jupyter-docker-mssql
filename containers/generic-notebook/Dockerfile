ARG BASE_IMAGE=jupyter/tensorflow-notebook

FROM $BASE_IMAGE

LABEL org.opencontainers.image.title "jupyter-mssql"
LABEL org.opencontainers.image.description "Jupyter notebook container with support for Microsoft SQL Server"
LABEL org.opencontainers.image.source "https://github.com/Realiserad/jupyter-docker-mssql"
LABEL org.opencontainers.image.authors "Bastian Fredriksson"

USER root

ENV MSSQL_DRIVER "ODBC Driver 18 for SQL Server"
ENV PATH="/opt/mssql-tools18/bin:${PATH}"

COPY key.gpg /usr/share/keyrings/microsoft.gpg
COPY package.list /etc/apt/sources.list.d/microsoft.list

RUN apt update --yes --no-install-recommends && \
    apt install --yes gnupg2 curl && \
    curl --silent https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /usr/share/keyrings/microsoft.gpg && \
    apt purge --yes gnupg2 curl && \
    echo "deb [arch=amd64,armhf,arm64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/ubuntu/22.04/prod jammy main" > /etc/apt/sources.list.d/microsoft.list
    ACCEPT_EULA=Y apt install --yes msodbcsql18 && \
    python3 -m pip install pyodbc && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Switch back to jovyan to avoid accidental container runs as root
USER ${NB_UID}