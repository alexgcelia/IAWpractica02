#!/bin/bash

set -x

#Actualizamos los paquetes del sistema
sudo dnf update

#Actualizar los paquetes nuevos
#sudo dnf upgrade

#----------------------------------
#Instalamos un servidor web Apache
#----------------------------------
sudo dnf install httpd -y

#Iniciamos el servicio Apache
sudo systemctl start httpd

#Habilitamos el servicio para que se inicie automáticamente después de cada reinicio
sudo systemctl enable httpd

#------------------------------------------------------------------
#Instalamos el sistema de gestor de de bases de datos MySQL Server
#------------------------------------------------------------------
sudo dnf install mysql-server -y

#Instalación del servidor hay que iniciar el servicio
sudo systemctl start mysqld

#Habilitamos el servicio para que se inicie automáticamente después de cada reinicio.
sudo systemctl enable mysqld