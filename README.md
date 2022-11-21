About
=====

The [Jupyter notebook containers](https://github.com/jupyter/docker-stacks) are currently lacking the capability to talk to SQL databases.

This repository contains a PoC demonstrating integration with Microsoft SQL Server using Microsoft's ODBC driver and ``pyodbc``.

Try it out
==========

The repository bundles a ``docker-compose.yml`` which spins up a Jupyter notebook and an ephemeral instance of Microsoft SQL Server.
```
docker-compose up
```

The test notebook can be accessed using [this link](http://127.0.0.1:8888/lab/workspaces/auto-L/tree/Test.ipynb) or by manually 
typing ``http://127.0.0.1:8888`` into the browser.
