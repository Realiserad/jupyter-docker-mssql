Deploy with Helm
================

You can deploy to your Kubernetes cluster using Helm and a customised ``values.yaml`` to pull an image from a third-party repository, as described in the [JupyterHub documentation](https://z2jh.jupyter.org/en/latest/jupyterhub/customizing/user-environment.html).

A sample ``values.yaml`` you can edit and use is available in this directory.

For example, if you are using ``minikube``:
```
minikube start \
    --extra-config=kubelet.runtime-request-timeout=15m \
    --memory 5g
helm upgrade --cleanup-on-fail \
    --timeout 15m0s
    --install hub jupyterhub/jupyterhub \
    --namespace notebooks \
    --create-namespace \
    --values values.yaml
minikube service --namespace notebooks proxy-public
```

Note that the ``values.yaml`` is configured to pull the image tagged with ``latest``, and in production you probably want to use a specific image. Each image is tagged with the date it was built, e.g. ``20221128``.