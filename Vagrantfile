Vagrant.configure("2") do |config|

  config.vm.box = "eurolinux-vagrant/centos-stream-9"

  config.vm.hostname = "centos-vm"

  config.vm.network "private_network", ip: "192.168.56.10"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = 2
  end

end

