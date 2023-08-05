
# LAB_DOCKER


#### Add user to docker group to avoid using sudo in docker command
```
sudo usermod -aG docker ${USER} # add user to docker group to avoid using sudo in docker command
```


#### Remark the (hani_nw_200) was create by command :   
```
docker network create --subnet=192.168.200.0/24 hani_nw_200
```

#### Start (jupyter/minimal-notebook) :
```
docker run -p 8888:8888 --user root -v /volumes/jupyter_notebook:/home/jovyan  -e CHOWN_HOME=yes -e CHOWN_HOME_OPTS='-R'  jupyter/minimal-notebook:2023-05-08
```
or
```
docker run -p 8888:8888 --user root -v /volumes/jupyter_notebook:/home/jovyan  -e GRANT_SUDO=yes                          jupyter/minimal-notebook:2023-05-08
```
