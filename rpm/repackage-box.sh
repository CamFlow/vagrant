# change the Vagrantfile to suppress ssh issues 
#./repackage/suppress-ssh-warning.sh

# boot up VM, provisioning to install camflow in the kernel
vagrant up

vagrant ssh -c '/vagrant/repackage/resolve-issues.sh'
vagrant halt
vagrant up
vagrant ssh -c '/vagrant/repackage/clean-up.sh'

vagrant package --base CamFlow-rpm
