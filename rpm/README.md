# rpm test on Fedora

This is a minimal configuration running CamFlow based on the Fedora distribution.

## Installation

```
git clone https://github.com/CamFlow/vagrant.git
cd ./vagrant/rpm
vagrant up
vagrant halt
vagrant up
# make sure the machine boot under the camflow kernel
```

Note: the installation process can take an extended amount of time depending on your internet connection speed.
Note2: the rpm packages are graciously hosted on [cloudsmith](https://cloudsmith.io/~camflow/repos/camflow/packages/).

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

## Configuring CamFlow

The capture policy can be modified by editing `/etc/camflow.ini` (e.g. `sudo nano /etc/camflow.ini`).

Provenance publication can be modified by editing `/etc/camflowd.ini` (e.g. `sudo nano /etc/camflowd.ini`).

Please see our [documentation](http://camflow.org) for more details.

Reboot the machine for the new configuration to take effect (alternatively you can restart the associated services).
