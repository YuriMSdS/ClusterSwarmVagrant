Vagrant.configure("2") do |config|

    swarn_token = "SWMTKN-1-23456789abcdefgh0123456789abcdefgh0123456789abcdefgh0123456789abcdefgh"

    config.vm.define "master" do |master|
        master.vm.box = "ubuntu/bionic64"
        master.vm.network "private_network", type: "dhcp"
        master.vm.network "forwarded_port", guest: 2237, host: 2237

        master.vm.hostname = "master"
        master.vm.provider "virtualbox" do |v|
            v.memory = 1024
            v.cpus = 1
        end
