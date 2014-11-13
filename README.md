Exercice d'architecture des systèmes d'information
================
##Lancement de la VM
	env.bat
Aller dans le dossier téléchargé

	vagrant up
	vagrant ssh

Pour lancer la VM, la baleine de Boot2docker apparaît 

	./run.sh
	
Lancer votre localhost:8080 dans votre navigateur

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
