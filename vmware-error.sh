#! /bin/bash
echo "Don't forget to run it  in the root"
version=$(vmware --version | awk '{print $3}')
git clone https://github.com/mkubecek/vmware-host-modules.git
cd vmware-host-modules
git checkout workstation-$version
make
sudo make install
sudo /etc/init.d/vmware start

