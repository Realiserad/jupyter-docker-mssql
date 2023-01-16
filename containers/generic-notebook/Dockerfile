ARG BASE_IMAGE=jupyter/minimal-notebook
ARG IMAGE_SOURCE=Realiserad/jupyter-docker-mssql

FROM $BASE_IMAGE

LABEL org.opencontainers.image.title "jupyter-mssql"
LABEL org.opencontainers.image.description "Jupyter notebook container with support for Microsoft SQL Server"
LABEL org.opencontainers.image.source "https://github.com/$IMAGE_SOURCE"
LABEL org.opencontainers.image.authors "Bastian Fredriksson"

USER root

ENV MSSQL_DRIVER "ODBC Driver 18 for SQL Server"
ENV PATH="/opt/mssql-tools18/bin:${PATH}"

COPY key.gpg /usr/share/keyrings/microsoft.gpg
COPY package.list /etc/apt/sources.list.d/microsoft.list

RUN apt update --yes && \
    ACCEPT_EULA=Y apt install --yes --no-install-recommends msodbcsql18 && \
    python3 -m pip install pyodbc && \
    apt clean && rm -rf /var/lib/apt/lists/*

# Switch back to jovyan to avoid accidental container runs as root
USER ${NB_UID}

# Make sure sqlalchemy is present
RUN mamba install --quiet --yes "sqlalchemy" && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"