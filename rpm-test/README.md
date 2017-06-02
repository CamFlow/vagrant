# rpm test on Fedora

This is a minimal configuration running CamFlow based on the Fedora distribution.

## Installation

```
git clone https://github.com/CamFlow/vagrant.git
cd ./vagrant/rpm-test
vagrant plugin install vagrant-vbguest
vagrant up
```

Note: the installation process can take an extended amount of time depending on your internet connection speed.

## Testing Installation

``` shell
vagrant ssh
# check installed version against CamFlow head
camflow -v
uname -r
# check services
cat /tmp/audit.log # audit service logs
cat /tmp/camflow.clg # configuration service logs
```

## Configuring CamFlow

The capture policy can be modified by editing `/etc/camflow.ini` (e.g. `sudo nano /etc/camflow.ini`). Please see [CamFlow Config](https://github.com/CamFlow/camflow-config) for more details.

Provenance publication can be modified by editing `/etc/camflow-service.ini` (e.g. `sudo nano /etc/camflow-service.ini`). Please see [CamFlow Service](https://github.com/CamFlow/camflow-service) for more details.

Reboot the machine for the new configuration to take effect (alternatively you can restart the associated services).
