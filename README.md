#Introduction

Add "login" to edk2 standard containers to have a proper login shell along with some additional developer utilities

###Build
  docker build -t edk2-ubuntu-22-dev-aj .

###Run
  docker run -it -v /mnt/data/dockerhome:/home -v /mnt/data/work:/work -e EDK2_DOCKER_USER_HOME=/home edk2-ubuntu-22-dev-aj login
