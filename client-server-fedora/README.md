# Client-Server example

TODO description

## Installation

```
git clone https://github.com/CamFlow/vagrant.git
cd ./vagrant/mqtt-fedora
vagrant plugin install vagrant-vbguest
vagrant up
```

**You may need to run `vagrant up` twice.**

Note: the installation process can take an extended amount of time depending on your configuration.

## Testing Installation

``` shell
vagrant ssh
# check installed version against CamFlow head
camflow -v
uname -r
# check services
journalctl -b | grep camflowd # audit service logs
journalctl -b | grep camconfd # configuration service logs

## Running the example

Open http://camflow.org/demo and start `CamFlow MQTT`

Prepare the server:
``` shell
vagrant ssh server
./examples/provenance/tcp-server.o 8888
```

On a second terminal prepare the client:
``` shell
vagrant ssh client
./examples/provenance/tcp-client.o 192.168.33.3 8888
```
If you cannot connect to the remote machine. Please run
`sudo service network restart` on both guest machines. See
[vagrant issue](https://github.com/mitchellh/vagrant/issues/8115) for details.

The page http://camflow.org/demo, in your favourite browser should now display a
graph similar to this one:

![Provenance](https://raw.githubusercontent.com/CamFlow/vagrant/master/client-server-fedora/img/client-server.png)

The larger boxes represent a given machine. The nodes outside of those machines are the ip packets being exchanged.
