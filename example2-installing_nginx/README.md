# Vagrantfile - Installing Nginx
  `config.vm.box = "centos/7"` Creating VM from box with centos version 7 
  `config.vm.hostname` Setting hostname
  `config.vm.network "forwarded_port"` Forwarding the port to access the web server from browser host 
  `config.vm.provision "shell"` We can run shell command to install nginx 

### How to run this script ?
`$ vagrant up`