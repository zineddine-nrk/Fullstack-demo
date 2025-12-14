Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  # Réseau privé (IP fixe)
  config.vm.network "private_network", ip: "192.168.56.10"

  # Timeout boot (évite les SSH timeout)
  config.vm.boot_timeout = 600

  # Ressources VM
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = 2
  end

  # Provisioning
  #config.vm.provision "shell", path: "provision.sh"
end
