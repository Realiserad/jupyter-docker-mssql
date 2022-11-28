About
=====

A frequently occurring usecase in Jupyter notebooks is to read from and write data to a database.

This repository contains a Docker recipe for [jupyter/docker-stacks](https://github.com/jupyter/docker-stacks), which cooks up an additional layer providing support for Microsoft SQL Server. In your notebooks you can use ``pyodbc`` and ``sqlalchemy`` to interact with the database.

Available images
================

The following images are built using GitHub Actions:

| Source container                                                                               | Build status 
| ---------------------------------------------------------------------------------------------- | ------------- |
| [tensorflow-notebook](https://github.com/jupyter/docker-stacks/tree/main/tensorflow-notebook)  | [![Build status](https://github.com/Realiserad/jupyter-pyodbc-demo/actions/workflows/tensorflow-notebook.yml/badge.svg?event=push&branch=main)](https://github.com/Realiserad/jupyter-pyodbc-demo/actions/workflows/tensorflow-notebook.yml) |

Try it out
==========

In the [examples folder](https://github.com/Realiserad/jupyter-pyodbc-demo/tree/master/example) you can find a ``docker-compose.yml`` which spins up a Jupyter notebook and an ephemeral instance of Microsoft SQL Server.
```
docker-compose up
```

The test notebook can be accessed using [this link](http://127.0.0.1:8888/lab/workspaces/auto-L/tree/Test.ipynb) or by manually 
typing ``http://127.0.0.1:8888`` into the browser.
