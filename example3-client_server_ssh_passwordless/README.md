# Vagrantfile - Client Server SSH No Password

We will implement SSH without password on 2 VMs which created by using vagrantfile 
Client (vagrant@client-01) ------(SSH Connection)-----> Server (vagrant@server-01)

`vm.box = "centos/7"` Creating VM from box with centos version 7 
`vm.hostname` Setting hostname
`vm.network "private_network"` We set the static IP. By default, vagrant set it NAT
`vm.provision "shell"` We run shell command by using this line

#### server.sh
We change the setting of SSH config. By default, vagrant does't allow the SSH using password. Only allow using key.

#### client.sh
We install epel repo as requirement `sshpass` installation. `sshpass` is used to pass the password in one line command. 
We use `runuser` command because by default, vagrant will provision using `root` user. So, if we want to `vagrant` user or other users can ssh to other server, we use this command.

### How to run this script ?
`$ vagrant up`