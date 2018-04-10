# CamFlow Dev on Fedora

Vagrant script setting up a Fedora VM to develop CamFlow.

## Installation

```
git clone https://github.com/CamFlow/vagrant.git
cd ./vagrant/dev-fedora
vagrant plugin install vagrant-vbguest
vagrant up
```

Note: the installation process can take an extended amount of time depending on
your configuration.

Note: In case of error on `vagrant up` check for virtualbox version mismatch.
You may need to update your host virtualbox installation.

## Developing camflow

All sources necessary to modify CamFlow should be available in the workspace folder in the vagrant user home directory.
To run the current development branch of all the components, please do as follow:

``` shell
cd workspace/camflow-dev
make config # keep the default configuration
make compile && make install
sudo reboot now
# after reboot everything should have been installed
# make sure you boot under the right kernel
```

## Testing Installation

``` shell
# check installed version against CamFlow dev branch
camflow -v
uname -r
# check services
journalctl -b | grep camflowd # audit service logs
journalctl -b | grep camconfd # configuration service logs
```
