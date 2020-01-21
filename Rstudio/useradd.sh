#useradd
for i in {1001..1020}
do

useradd --create-home --no-log-init --shell /bin/bash -G rstudio-server $i
adduser $i sudo
adduser $i rstudio-server
echo $i:1234 |chpasswd

done
