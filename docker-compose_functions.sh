#!/bin/sh

#######################################################################
#   f u n c t i o n
                   docker_create_volumes(){
#######################################################################
echo -e "\n\e[1;96m[docker_create_volumes]\e[0m\n"
sudo mkdir -pv /volumes/{mysql,mongo,postgres,redis,php,jupyter_notebook,portainer}
sudo mkdir -pv /volumes/{prometheus/{data,conf},grafana/{data,conf}}
sudo mkdir -pv /volumes/{busybox,mozilla1,go,apache2/etc/apache2/sites-available}
sudo mkdir -pv /volumes/gentoo/{root,run/openrc,etc}
sudo touch /volumes/gentoo/run/openrc/softlevel
ls -l /volumes/
} # f u n c t i o n [END] #############################################


#######################################################################
#   f u n c t i o n
                   docker_create_networks(){
#######################################################################
T_NETWORK='hani_nw_200'
docker network rm $T_NETWORK 
docker network create --subnet=192.168.200.0/24 $T_NETWORK 
docker network ls 
} # f u n c t i o n [END] #############################################
