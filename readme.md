# Modules 0-python_mysql 
    ##(mysql 8.0.* - python3.8.5 - pip 20.0.2 (python 3.8) )
    # Ce module comprend 3 petits modules totalement indépendantes les unes des autres
    # 1 - Génère avec ansible une copie de sauvegarde d'un ou plusieurs sites internet distants ainsi que leur bdd
    # 2 - Génère une copie d'une bdd distante via un dossier local
    # 3 - Génère des requètes SQL depuis un tableau à 2 dimensions 
    #     et génère pour chaque résultat un fichier au format JSON 
    #     Les fichiers sont regroupés dans un dossier portant la date et l'heure de la génération
    #     C'est fichiers peuvent être exploités à des fins de statistiques ou de création de listes
    # ***********************************************

# Il est nécessaire d'avoir au moins 2 machines :
    -   1 machine qui sera le node manager pour jouer le playbook et lancer les scripts python
    -   Un accès distant à un site internet et à sa base de donnée avec les droits d'accès pré-configués
     

# Au préalable, une configuration s'impose sur le node manager :
    -   Installation de Ansible 
    -   Il est important d'installer Python (python3-pip, avec le paquet sshpass) pour pouvoir travailler
        en toute sécurité au sein d'un environnement de travail virtuel (avec env ou virtualenv par exemple - Python).
        Pour ma part,j'utilise l'IDE Visual Code de microsoft (parfait sur linux aussi).
        Python peut vous permettre d'aller plus loin vers une automatisation encore plus spécifique.
    -   Il est aussi impératif de créer un nouvelle utilisateur sur la machine distante avec les droits SUDO
        ainsi d'y accéder depuis le node manager en ssh (Utilisation de ssh-keygen + ssh-copy-id -i "" user@machine).
    -   Dans le cas de machine virtuels, il faut absolument déclarer leur propre IP et nom de server dans le etc/hosts :
        Adresse IP locale -> [10|172|192].*.*.* - Idem pour le node manager 
    -   2 Collections devront être ajouter à Ansible (les fichiers se trouvent dans Collection-a-installer) :
            community-general-2.3.0.tar.gz  
            community-mysql-1.3.0.tar.gz
            Commande pour l'installation : $ ansible-galaxy collection install *.tar.gz

    -   Pour les accès distants au bdd avec les scripts python
        MYSQL en local doit avoir accès aux machines distantes !
        ----------------------------------

        -   Pour cela une configuration minimal s'impose depuis : 
            /etc/mysql/mysql.conf.d/mysqld.cnf - il faudra décommenter:
            ------------------------------
                user        = mysql
                pid-file    = /var/run/mysqld/mysqld.pid
                socket      = /var/run/mysqld/mysqld.sock
                port        = 3306
                datadir     = /var/lib/mysql

                bind-addresse = 0.0.0.0
            ------------------------------

        -   Sur la machine distante, il faudra créer l'utilisateur qui pourra se connecter à la bdd et lui donner les pouvoirs pour agir :
            ------------------------------
            - Connexion en root sur la machine distante pour créer un utilisateurs et lui attribuer les droits et privilèges qui s'imposent :
                $ mysql -u root -pMotDePass
            - Création de l'utilisateur
                mysql> CREATE USER 'dbadmin'@'p6-manager' IDENTIFIED BY 'dbxpass';
            - Octroie des droits des privilèges sur les ressources
                mysql> GRANT ALL PRIVILLEGES ON maDataBase.* TO 'dbadmin'@'p6-manager';
            - Octroie des droits principaux 
                mysql> GRANT CREATE, ALTER, SELECT, REFERENCES, RELOAD ON *.* TO 'dbadmin'@'p6-manager' WITH GRANT OPTION;
            - Commande de vidage de mysql ( vide le cache )
                mysql> FLUSH PRIVILEGES;
            ------------------------------

        


Un cours sur Ansible est particulièrement intéressant et disponible sur OPENCLASSROOM.
De nombreux tutoriels de DigitalOcean (hébergeur web) peuvent être utiles pour la configuration d'un environnement virtuel et d'ansible ainsi que notamment un tutoriel explicite sur l'accés à distance à mysql et sur l'attibution des droits et autres privilèges.
Retrouvez ces informations entres autres dans la liste de lien à la fin de ce compte rendu.


### L'arborescence du dossier 0-python-mysql :
a - un dossier : 0-rapports -> comprendra des dossiers de rapport du genre : report-20210414-221024
b - un dossier : 0-remoteBackup -> comprendra des dossiers de backup de la database en local du genre : 20210414-221024
c - un dossiers Collections-a-installer : avec 2 collections ansible à installer
d - un dossier : library -> comprenant 2 scripts python
e - un dossier : wordpress-bdd_backup -> comprend un fichier playbbok.yml plus un dossiers vars avec un fichier default.yml inside
f - un fichier : hosts (fichier inventaire ansible)
g - un fichier de licence
h - un fichier readme.md


## Les paramètres
- `mysql_db`:               Le nom de la Base de donnée de votre site (ici c'est un site wordpress)
- `mysql_user`:             Le nom de l'utilisateur de MYSQL pour la bdd de WordPress.
- `mysql_password`:         Le mot de passe de l'utilisateur de MySQL. 
                            Pensez à utiliser la commande ansible-vault encrypt-string.
- `http_host`:              Le nom du host est à renseigner de façon unique dans toutes les scripts pythons
                            En revanche, le playbook wordpress-bdd_backup peut s'appliquer sur plusieurs sites depuis plusieurs hosts !!!

# ** Les fonctionnalitées **

### 1 - Le playbook ansible wordpress-bdd_backup
Ce playbook wordpress-bdd_backup va récupérer les variables depuis le fichier default.yml qui se trouvent dans /vars 
L'execution de ce playbook aura pour effet de :
1 - créer un dossier "/mnt/web_backup" pour recevoir la copie compressée du site internet
2 - faire la copie du site et la compressée à destination du dossier créé en 1
3 - créer un dossier "/mnt/mysql_backup" pour recevoir la copie de la bdd du site internet avec les droits adéquats
4 - copier le dump de la bdd dans le dossier créer en 3
5 - Le playbook se lance à partir du sous dossier wordpress-bdd_backup avec la commande :
    ansible-playbook playbook.yml -i ../hosts -u monUser --ask-pass --become --ask-become-pass


### 2 - Le script v1.0.1-pythonSimpleDump.py
Ce script à pour vocation de faire une copie en local de la bdd distante du site.
Les variables de connexion ayant été pré-défini au préalable, le script va :
1 - faire un test de connexion à la bdd
2 - Définir un chemin pour la copie de la bdd
3 - Lancer une commande mysqldump afin de créer un fichier contenant les informations de la bdd
4 - Ce fichier de sauvegarde sera ensuite compressé 
5 - Le script se lance depuis le sous dossier library avec la commande :
    python3 v1.0.1-pythonSimpleDump.py



### 3 -  Le script v1.0.1-pythonRapportsStat.py
L'objectif de ce script basique et sans prétention peut s'orienter vers de multiples fonctionnalités : 
Il s'agit de récupérer des données via des requêtes sql de type "SELECT" afin de transférer les résultats 
au format JSON pour chaque requête et sous formes d'archives dans des fichiers distincts eux mêmes regroupés 
dans un dossier commun nommé par datetime.
Cela peut être utiles entres autres pour faire des statistiques en comparant les résultats d'un rapport daté à un autre. 
C'est aussi pratique pour récupérer des listes quelconques comme : utilisateurs, adresse mail, 
nombre de terme utilisé dans tel ou tel contenus Posts, nombre d'article etc...
Il faudra remplir via un tableau à 2 dimensions -> 2 variables :
    -   le nom du futur fichier de façon explicite 
    -   la requête de type SELECT qui sera exécuté

Les variables de connexion ayant été pré-défini au préalable, le script va :
1 - Vérifier la connexion à mysql distant
2 - Se connecter à une table cible temporaire
3 - A partir du tableau et via une boucle for :
    successivement, les requêtes seront exécutées et les informations affiché en console
    ensuite les 2 variables du nom de fichier et du resultat de la requête en cours
    seront envoyés en argument à une fonction qui va générer l'arborescence des dossiers 
    et des fichiers au format json instantanément.
4 - Le script se lance depuis le sous dossier library avec la commande :
    python3 v1.0.1-pythonRapportsStat.py 


# Cours et tutos traitants de ce playbook 
    *******************************************
    https://openclassroom.com/fr/courses/1959476-administrez-vos-bases-de-donnees-avec-mysql/1959969-installez-mysql
    https://digitalocean.com/community/tutorials/how-to-allow-remote-access-to-mysql
    https://dev.mysql.com/doc/refman/8.0/en/mysqldump.html
    https://dev.mysql.com/doc/refman/8.0/en/grant.htlm
    https://dev.mysql.com/doc/connector-python/en/connector-python-example-connecting.html
    https://docs.python.org/fr/3/library/json.html
    https://openclassrooms.com/fr/courses/2035796-utilisez-ansible-pour-automatiser-vos-taches-de-configuration
    https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-programming-environment-on-an-ubuntu-20-04-server-fr
    https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-20-04-fr
    https://docs.ansible.com/

Licence MIT
