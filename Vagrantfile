# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "dduportal/boot2docker"

  # PostgreSQL NAT redirige le port de la VM sur le port de windows
  config.vm.network :forwarded_port, guest: 5432, host: 5432, auto_correct: true

   # Geoserver
  config.vm.network :forwarded_port, guest: 8080, host: 8080, auto_correct: true
# accès à geoserver depuis un navigateur avec localhost:8080

end
