
# LAB_DOCKER
LAB_DOCKER



## Add user to docker group to avoid using sudo in docker command

```
sudo usermod -aG docker ${USER} # add user to docker group to avoid using sudo in docker command
```


### Start (jupyter/minimal-notebook) :
```
docker run -p 8888:8888 --user root -v /volumes/jupyter_notebook:/home/jovyan  -e CHOWN_HOME=yes -e CHOWN_HOME_OPTS='-R'  jupyter/minimal-notebook:2023-05-08
```
or

```
docker run -p 8888:8888 --user root -v /volumes/jupyter_notebook:/home/jovyan  -e GRANT_SUDO=yes                          jupyter/minimal-notebook:2023-05-08
```

#### 4Start (jupyter/minimal-notebook) :
