[![Driver](https://img.shields.io/badge/Driver-ODBC%20Driver%2018%20for%20SQL%20Server-blue)](https://learn.microsoft.com/en-us/sql/connect/odbc/linux-mac/release-notes-odbc-sql-server-linux-mac?view=sql-server-ver16#1812-november-2022) [![Compatibility](https://img.shields.io/badge/Compatible%20with-SQL%20Server%202019-green?logo=microsoftsqlserver)](https://learn.microsoft.com/en-us/sql/connect/odbc/windows/system-requirements-installation-and-driver-files?view=sql-server-ver16#sql-version-compatibility) [![Build status](https://github.com/Realiserad/jupyter-docker-mssql/actions/workflows/build_and_publish.yml/badge.svg?event=push&branch=main)](https://github.com/Realiserad/jupyter-docker-mssql/actions/workflows/build_and_publish.yml)

About
=====

A frequently occurring usecase in Jupyter notebooks is to read from and write data to a database.

This repository contains a Docker recipe for [jupyter/docker-stacks](https://github.com/jupyter/docker-stacks), which cooks up an additional layer providing support for Microsoft SQL Server. In your notebooks you can use ``pyodbc`` and ``sqlalchemy`` to interact with the database. See [the test notebook](https://github.com/Realiserad/jupyter-docker-mssql/blob/main/example/notebooks/Test.ipynb) for a Python sample.

Available images
================

Containers based on the following images are built and published weekly to ``ghcr.io`` using GitHub Actions:

- jupyter/minimal-notebook
- jupyter/r-notebook
- jupyter/scipy-notebook
- jupyter/tensorflow-notebook
- jupyter/datascience-notebook
- jupyter/pyspark-noteboo
- jupyter/all-spark-notebook

Try it out
==========

In the [examples folder](https://github.com/Realiserad/jupyter-docker-mssql/tree/master/example), you can find a script for generating a ``docker-compose.yml`` which spins up a Jupyter notebook, and an ephemeral instance of Microsoft SQL Server.
```
cd example
sh create_docker_compose.sh "jupyter/minimal-notebook" "mcr.microsoft.com/mssql/server:2019-latest"
docker-compose up
```

The test notebook can be accessed using [this link](http://127.0.0.1:8888/lab/workspaces/auto-L/tree/Test.ipynb?token=foo123) or by manually
typing ``http://127.0.0.1:8888`` into the browser and logging in with the token ``foo123``.

Roll your own
=============

You can build and distribute your own container images by forking this repository. Note that the workflows use cron-scheduled actions, and these are disabled in forks by default. I would recommend to remove the cron from the workflow file and then manually enable the workflows for which you want images to be built and published.
