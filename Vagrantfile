# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "box-cutter/centos71"
  # config.vm.box_check_update = false

  config.vm.synced_folder "srv", "/srv"

  config.vm.define :salt do |salt|
    salt.vm.hostname = "salt.heron.wilsys.net"
    salt.vm.network "private_network", ip: "192.168.50.4"
  end

  config.vm.define :minion do |minion|
    minion.vm.network "private_network", ip: "192.168.50.5"
    minion.vm.hostname = "minion.heron.wilsys.net"
  end

  config.vm.provision "shell", inline: <<-SHELL
    echo '192.168.50.4 salt.heron.wilsys.net salt' >>/etc/hosts
    echo '192.168.50.5 minion.heron.wilsys.net minion' >>/etc/hosts
  SHELL

end
