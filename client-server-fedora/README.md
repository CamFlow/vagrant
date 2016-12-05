# Client-Server example

TODO description

## Installation

```
git clone https://github.com/CamFlow/vagrant.git
cd ./vagrant/mqtt-fedora
vagrant plugin install vagrant-vbguest
vagrant up
```

Note: the installation process can take an extended amount of time depending on your configuration.

## Testing Installation

``` shell
vagrant ssh client
# "vagrant ssh server" to ssh into the server
# check installed version against CamFlow head
camflow-ifc -v
uname -r
# check services
cat /tmp/audit.log # audit service logs
cat /tmp/camflow.clg # configuration service logs
```

## Running the example

Open http://camflow.org/demo and start `CamFlow MQTT`

Prepare the server:
``` shell
vagrant ssh server
./examples/provenance/tcp-server 8888
```

On a second terminal prepare the client:
``` shell
vagrant ssh client
./examples/provenance/tcp-client 192.168.33.3 8888
```

The page http://camflow.org/demo, in your favourite browser should now display a
graph similar to this one:

![Provenance](https://raw.githubusercontent.com/CamFlow/vagrant/master/client-server-fedora/img/client-server.png)

The larger boxes represent a given machine. The nodes outside of those machines are the ip packets being exchanged.
