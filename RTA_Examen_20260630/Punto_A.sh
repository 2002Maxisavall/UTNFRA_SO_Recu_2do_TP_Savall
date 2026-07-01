lsblk
sudo pvcreate /dev/sdd
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
