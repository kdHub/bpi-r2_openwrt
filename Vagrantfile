# -*- mode: ruby -*-
# vi: set ft=ruby :
#Assaumes virtual box and vagrant is preinstalled
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "imageBuilder"
  #config.vm.network :forwarded_port, host: 8080, guest: 80
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.synced_folder "/vagrant", "/media/shared"
  config.vm.provider "virtualbox" do |vb|
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
    vb.cpus = 2
  end
  config.disksize.size = "20GB"
  config.vm.box = "ubuntu/xenial64"
end
