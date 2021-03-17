# Ubuntu 14.04 Vagrant Machine

These Vagrant files automate the installation of an Apache2 server running on Ubuntu 14.04.

What's in the box:
* [Emacs](https://www.gnu.org/software/emacs/) - The best text editor

# Requirements

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

* [Vagrant](https://www.vagrantup.com/downloads.html)

You must install VirtubalBox and Vagrant before continuing.

# Getting started

Once Vagrant and VirtualBox are installed, clone this repository on the host machine.

Clone this repository with:

```sh
git clone https://github.com/AmilcarArmmand/foundations-vagrant-machine/
```

From this directory, let's start your Vagrant box by typing in your terminal (it might take some time to download the Ubuntu image):

```sh
vagrant up
```

Once the setup is complete, just run:

```sh
vagrant ssh
```

Open a browser and browse http://{private_network_IP}

# Tips and tricks

To access files present on your computer from your Vagrant/Ubuntu machine, go to the `/vagrant` directory which is mounted to the directory you started you Vagrant box from and in which your `Vagrantfile` is located:

```sh
cd /vagrant/
```

To get a list of available vagrant commands (from your host computer), just type:

```sh
vagrant
```

If you want to play around with the providioning scripts, make the modifications and then run:

```sh
vagrant reload --provision
```

If you want to start your virtual machine from scratch, disconnect from it and from your host computer run:

```sh
vagrant destroy
```

Run `vagrant up` again to start a machine from scratch.
