[![Driver](https://img.shields.io/badge/Driver-ODBC%20Driver%2018%20for%20SQL%20Server-blue)](https://learn.microsoft.com/en-us/sql/connect/odbc/linux-mac/release-notes-odbc-sql-server-linux-mac?view=sql-server-ver16#1812-november-2022) [![Compatibility](https://img.shields.io/badge/Compatible%20with-SQL%20Server%202019-green?logo=microsoftsqlserver)](https://learn.microsoft.com/en-us/sql/connect/odbc/windows/system-requirements-installation-and-driver-files?view=sql-server-ver16#sql-version-compatibility)

About
=====

A frequently occurring usecase in Jupyter notebooks is to read from and write data to a database.

This repository contains a Docker recipe for [jupyter/docker-stacks](https://github.com/jupyter/docker-stacks), which cooks up an additional layer providing support for Microsoft SQL Server. In your notebooks you can use ``pyodbc`` and ``sqlalchemy`` to interact with the database. See [the test notebook](https://github.com/Realiserad/jupyter-docker-mssql/blob/main/example/notebooks/Test.ipynb) for a Python sample.

Available images
================

The following images are built weekly using GitHub Actions:

| Source container                                                                               | Build status
| ---------------------------------------------------------------------------------------------- | ------------- |
| [tensorflow-notebook](https://github.com/jupyter/docker-stacks/tree/main/tensorflow-notebook)  | [![Build status](https://github.com/Realiserad/jupyter-docker-mssql/actions/workflows/tensorflow-notebook.yml/badge.svg?event=push&branch=main)](https://github.com/Realiserad/jupyter-docker-mssql/actions/workflows/tensorflow-notebook.yml) |

Try it out
==========

In the [examples folder](https://github.com/Realiserad/jupyter-docker-mssql/tree/master/example) you can find a ``docker-compose.yml`` which spins up a Jupyter notebook and an ephemeral instance of Microsoft SQL Server.
```
docker-compose up
```

The test notebook can be accessed using [this link](http://127.0.0.1:8888/lab/workspaces/auto-L/tree/Test.ipynb?token=foo123) or by manually
typing ``http://127.0.0.1:8888`` into the browser and logging in with the token ``foo123``.
