# Low-Level and High-Level Vagrant Machine

These Vagrant files automates the installation of a working Deep Learning machine running on Ubuntu 14.04.

What's in the box:
* [Emacs]
* [Keras](http://keras.io/) - minimalist, highly modular neural networks library.


![Keras](http://imgur.com/nE0of8d.jpg "Keras")

# Requirements

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

* [Vagrant](https://www.vagrantup.com/downloads.html)

You must install VirtubalBox and Vagrant before continuing.

# Getting started

Once Vagrant and VirtualBox are installed, clone this repository or import `Vagrantfile` and `bootstrap.sh` in a directory.

From this directory, let's start your Vagrant box by typing in your terminal (it might take some time to download the Ubuntu image):

    $ vagrant up
Once the setup is complete, just run:

    $ vagrant ssh
You are in! Now, let's train your first recurrent neuronal network:

    $ python keras/examples/addition_rnn.py

If you can see that, it means that you setup is working and that you are training your recurrent neuronnal network to perform addition!
![addition_rnn-screenshot](http://i.imgur.com/u06tE6B.png)

To go through the code step by step, type:

    $ jupyter notebook --no-browser --ip=0.0.0.0 --FileContentsManager.root_dir=/home/vagrant/keras/examples/

Open a browser and browse http://127.0.0.1:8888

Looking for some resources to get started with Deep Learning? Check out our [introductory workshops](https://github.com/holbertonschool/deep-learning).

# Tips and tricks

To access files present on your computer from your Vagrant/Ubuntu machine, go to the `/vagrant` directory which is mounted to the directory you started you Vagrant box from:

    $ cd /vagrant/

To get a list of available vagrant commands (from your host computer), just type:

    $ vagrant

If you want to start your virtual machine from scratch, disconnect from it and from your host computer run:

    $ vagrant destroy
    $ vagrant up