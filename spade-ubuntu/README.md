# CamFlow Dev on Fedora

Vagrant script setting up a Ubuntu VM to develop CamFlow.

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

## Testing Installation

``` shell
vagrant ssh
# check installed version against CamFlow head
camflow -v
uname -r
# check services
journalctl -b | grep camflowd # audit service logs
journalctl -b | grep camconfd # configuration service logs
```
