Exercice d'architecture des systèmes d'information
================
##Récupération du dépot
##Lancement de la VM
	env.bat
	vagrant plugin install vagrant-proxyconf
	vagrant box -v add dduportal/boot2docker

Aller dans le dossier 

	vagrant up
	vagrant ssh

Pour lancer la VM, la baleine de Boot2docker apparaît 

	./run.sh
	
Lancer http://127.0.0.1:8080/geoserver/ dans votre navigateur

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
