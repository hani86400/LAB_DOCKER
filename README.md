
# LAB_DOCKER
LAB_DOCKER


Start (jupyter/minimal-notebook) :
```
docker run -p 8888:8888 --user root -v /volumes/jupyter_notebook:/home/jovyan  -e CHOWN_HOME=yes -e CHOWN_HOME_OPTS='-R'  jupyter/minimal-notebook:2023-05-08
docker run -p 8888:8888 --user root -v /volumes/jupyter_notebook:/home/jovyan  -e GRANT_SUDO=yes                          jupyter/minimal-notebook:2023-05-08
```
