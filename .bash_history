git clone https://github.com/sofiasartori/UTNFRA_SO_Examenes.git
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202411/script_Precondicion.sh
ls
cd
cd UTN-FRA_SO_Examenes/
./UTN-FRA_SO_Examenes/202411/script_Precondicion.sh
ls

./202411/script_Precondicion.sh
./202410/script_Precondicion.sh
source ~/.bashrc
cd ..
ls
cd UTN-FRA_SO_Examenes/
ls
cd
mkdir -p ~/repogit
mv ~/UTN-FRA_SO_Examenes ~/repogit/
ls 
ls ~/repogit/
cd ~/repogit/UTN-FRA_SO_Examenes
./202410/script_Precondicion.sh
rm -rf ~/repogit
cd
cd ~
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git ~/repogit
ls -la ~/repogit
cd ~/repogit
./202410/script_Precondicion.sh
exit
git clone https://github.com/sofiasartori/UTN-FRA_SO_Examenes
ls
./UTN-FRA_SO_Examenes/202411/script_Precondicion.sh
source ~/.bashrc
sudo apt-get update
sudo apt-get install -y tree ansible
sudo apt-get install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc]
https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee
/etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker msavall
exit
ls
lsblk
sudo pvcreate /dev/sdc
sudo pvs
sudo vgcreate vg_datos /dev/sdc
sudo vgs
sudo lvcreate -n lv_docker -L 10M vg_datos
sudo lvcreate -n lv_multimedia -L 1.5G vg_datos
sudo umount /var/lib/docker 2>/dev/null
sudo umount /Multimedia 2>/dev/null
sudo lvremove /dev/vg_datos/lv_docker 2>/dev/null
ls
sudo vgremove vg_datos
sudo pvremove /dev/sdd
sudo pvcreate /dev/sdd
exit
su - msavall
exit
sudo pvs
sudo vgcreate vg_datos /dev/sdd
sudo vgs
sudo lvcreate -n lv_docker -L 10M vg_datos
sudo lvcreate -n lv_multimedia -L 1.5G vg_datos
sudo lvs
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_multimedia
sudo mkdir -p /var/lib/docker
sudo mkdir -p /Multimedia
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_multimedia /Multimedia
sudo fdisk /dev/sdc
sudo mkswap /dev/sdc1
sudo swapon /dev/sdc1
swapon --show
sudo blkid /dev/vg_datos/lv_docker /dev/vg_datos/lv_multimedia /dev/sdc1
echo    'UUID=2aaa0317-1a65-4ca7-826e-b606551eeb61        /var/lib/docker        ext4        defaults        0        2'    |    sudo    tee    -a    /etc/fstab
echo    'UUID=3665db8c-5422-4018-b3df-73bf9a412e06        /Multimedia        ext4        defaults        0        2'    |    sudo    tee    -a    /etc/fstab
echo    'UUID=793e74db-cc69-4c62-b6da-bc4255f2e08a    none        swap        sw        0        0'    |    sudo    tee    -a    /etc/fstab
sudo mount -a
sudo swapon -a
sudo systemctl restart docker
sudo systemctl status docker
df -h | grep -E "docker|Multimedia"
swapon --show
sudo reboot
ls
cd RTA_Examen_20260630/
ls
nano Punto_A.sh
cat ~/UTN-FRA_SO_Examenes/202411/bash_script/Lista_Animales.txt
sudo vim /usr/local/bin/savall_clasif_animales.sh
ls
cd RTA_Examen_20260630/
ls
cd
cat ~/UTN-FRA_SO_Examenes/202411/bash_script/Lista_Animales.txt
sudo vim /usr/local/bin/savall_clasif_animales.sh
sudo chmod +x /usr/local/bin/savall_clasif_animales.sh
sudo /usr/local/bin/savall_clasif_animales.sh ~/UTN-FRA_SO_Examenes/202411/bash_script/Lista_Animales.txt
cat /tmp/animales.txt
tree /tmp/Animales
cp /usr/local/bin/savall_clasif_animales.sh ~/RTA_Examen_20260630/
cp /tmp/animales.txt ~/RTA_Examen_20260630/
cp -r /tmp/Animales ~/RTA_Examen_20260630/tmp_Animales
cd RTA_Examen_20260630/
ls
nano Punto_B.sh
cd
exit
cd ~/UTN-FRA_SO_Examenes/202411/docker/
ls -l
vim index.html
cd ~/UTN-FRA_SO_Examenes/202411/docker/
vim index.html
cat Dockerfile
cd
ls
cd ~/UTN-FRA_SO_Examenes/202411
ls
cd ~/UTN-FRA_SO_Examenes/202411/docker
ls
cat dockerfile
cat Dockerfile
ls
cd
ls
cat > Dockerfile << 'EOF'
FROM nginx:latest
COPY . /usr/share/nginx/html/
EOF

ls
cd ~/UTN-FRA_SO_Examenes/202411/docker
cat > Dockerfile << 'EOF'
FROM nginx:latest
COPY . /usr/share/nginx/html/
EOF

ls
cat Dockerfile 
sudo docker build -t web2-savall .
ls
ls -la
docker build -t web2-savall .
sudo snap install docker
sudo docker build -t web2-savall .
sudo docker login -u maxisavall
sudo docker tag web2-savall maxisavall/web2-savall
sudo docker push maxisavall/web2-savall
vim web/file/info.txt
nano web/file/info.txt
id -u msavall
nano web/file/info.txt
nano docker-compose.yml
sudo docker compose up -d
sudo docker compose ps
curl localhost:81
curl localhost:81/file/info.txt
mkdir -p ~/RTA_Examen_20260630/docker
cp -r ~/UTN-FRA_SO_Examenes/202411/docker/* ~/RTA_Examen_20260630/docker/
cd ~/RTA_Examen_20260630/Punto_C-sh.
cd
ls
cd ~/RTA_Examen_20260630/
ls
cd Punto_C.sh
cd Punto_C.sh.
nano ~/RTA_Examen_20260630/Punto_C.sh.
cd ~/UTN-FRA_SO_Examenes/202411/ansible/
ls
cat playbook.yml
find roles -type f
ansible-galaxy init roles/2PRecuperatorio
ls
nano roles/2PRecuperatorio/tasks/main.yml
nano roles/Crea_Carpetas_savall/tasks/main.yml
ansible-galaxy init roles/Crea_Carpetas_savall
ansible-galaxy init roles/Cambia_Propiedad_savall
ansible-galaxy init roles/Sudoers_savall
nano roles/Crea_Carpetas_savall/tasks/main.yml
nano roles/Cambia_Propiedad_savall/tasks/main.ym
nano roles/Cambia_Propiedad_savall/tasks/main.yml
nano roles/Sudoers_savall/tasks/main.yml
ls
nano playbook.yml
sudo ansible-playbook -i inventory/ playbook.yml --connection=local
id profesor
id alumno
ls -la /UTN/Alumno /UTN/Profesor
sudo cat /etc/sudoers.d/GProfesores
mkdir -p ~/RTA_Examen_<fecha>/ansible
mkdir -p ~/RTA_Examen_20260630/ansible
cp -r ~/UTN-FRA_SO_Examenes/202411/ansible/roles ~/RTA_Examen_20260630/ansible/
cp ~/UTN-FRA_SO_Examenes/202411/ansible/playbook.yml ~/RTA_Examen_20260630/ansible/
nano ~/RTA_Examen_<fecha>/Punto_D.sh.
nano ~/RTA_Examen_20260630/Punto_D.sh.
cd
git config --global user.email savallmaximo@gmail.com
git config --global user.name 2002maxisavall
history -a
cp ~/.bash_history ~/UTNFRA_SO_Recu_2do_TP_Savall/
cd
cp ~/.bash_history ~/UTNFRA_SO_Recu_2do_TP_Savall/
git clone https://github.com/2002Maxisavall/UTNFRA_SO_Recu_2do_TP_Savall.git 
