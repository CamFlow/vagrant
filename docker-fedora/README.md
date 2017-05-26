# CamFlow Dev on Fedora

Vagrant script setting up a XUbuntu VM to develop CamFlow.

## Installation

```
git clone https://github.com/CamFlow/vagrant.git
cd ./vagrant/dev-ubuntu
vagrant plugin install vagrant-vbguest
vagrant up
```

Note: the installation process can take an extended amount of time depending on
your configuration.

## Testing Installation

``` shell
vagrant ssh
# check installed version against CamFlow head
camflow-ifc -v
uname -r
# check services
cat /tmp/audit.log # audit service logs
cat /tmp/camflow.clg # configuration service logs
```
