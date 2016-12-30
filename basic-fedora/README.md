# Basic CamFlow on Fedora

TODO description

## Installation

```
git clone https://github.com/CamFlow/vagrant.git
cd ./vagrant/basic-fedora
vagrant plugin install vagrant-vbguest
vagrant up
```

Note: the installation process can take an extended amount of time depending on your configuration.

## Testing Installation

``` shell
vagrant ssh
# check installed version against CamFlow head
camflow-prov -v
uname -r
# check services
cat /tmp/audit.log # audit service logs
cat /tmp/camflow.clg # configuration service logs
```
