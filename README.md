Exercice d'architecture des systèmes d'information
================
##Récupération du dépot

##Lancement de la VM
	set HTTP_PROXY=http://10.0.4.2:3128
	set HTTPS_PROXY=http://10.0.4.2:3128
	set NO_PROXY=localhost
	set VAGRANT_HTTP_PROXY=http://10.0.4.2:3128
	set VAGRANT_HTTPS_PROXY=http://10.0.4.2:3128
	set VAGRANT_NO_PROXY=localhost
	vagrant plugin install vagrant-proxyconf
	vagrant box -v add dduportal/boot2docker
	git clone https://github.com/hmouthier/exo_asi-oct-2014.git
	
Aller dans le dossier 

	vagrant up
	vagrant ssh

Pour lancer la VM, la baleine de Boot2docker apparaît 
	
	cd /vagrant
	./run.sh
	
Lancer http://127.0.0.1:8080/geoserver/web/ dans votre navigateur

* Login : admin
* Password : geoserver

Ajouter un entrepot,  PostGIS - PostGIS Database

Pour récupérer l'adresse IP

	docker inspect postgisserver 
	
"IPAddress": "votre IPA"

Remplissage des informations

Nom de la source de données 

	MaBase
	
host

	votre IPA:5432
	
user

	postgres
