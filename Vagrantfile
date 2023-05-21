Vagrant.configure("2") do |config|

  config.vm.define "config" do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.network "private_network", ip: "192.168.60.10"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end
#   config.vm.provision "shell", inline: <<-SHELL
#    sudo apt-get update
#    sudo apt install ca-certificates curl gnupg -y
#
#   SHELL
end
end
