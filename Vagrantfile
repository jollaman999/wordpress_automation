# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # node1 VM
  config.vm.define "jolla_node1" do |config|
    config.vm.box = "ubuntu/hirsute64"
    config.vm.provider "virtualbox" do |vb|
      vb.name = "jolla_node1"
      vb.cpus = 2
      vb.memory = 2000
    end
    config.vm.hostname = "node1"
    config.vm.network "private_network", ip: "192.168.100.101"
  end

  # node2 VM
  config.vm.define "jolla_node2" do |config|
    config.vm.box = "ubuntu/hirsute64"
    config.vm.provider "virtualbox" do |vb|
      vb.name = "jolla_node2"
      vb.cpus = 2
      vb.memory = 2000
    end
    config.vm.hostname = "node2"
    config.vm.network "private_network", ip: "192.168.100.102"
  end

  # Enable SSH Password Authentication
  config.vm.provision "shell", inline: <<-SHELL
    sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config
    sed -i 's/archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
    sed -i 's/security.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
    systemctl restart ssh
  SHELL

end

