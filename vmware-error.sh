#! /bin/bash
directory="vmware-host-modules"
echo "Don't forget to run it  in the root"
if [[ -d ${directory} ]]; then
        echo "directory found "
        rm -r ${directory}
fi
version=$(vmware --version | awk '{print $3}')
echo $version
git clone https://github.com/mkubecek/vmware-host-modules.git
cd vmware-host-modules
git checkout workstation-$version
make
sudo make install
sudo /etc/init.d/vmware start

