#!/usr/bin/python
 
#***************************
# Dump database Wordpress
# Damien Burdo 12 avril 2021
# p6 - OPENCLASSROOM
#***************************

# Configuration mysql dump on mysql 8.0.*
# https://dev.mysql.com/doc/refman/8.0/en/mysqldump.html
 
from __future__ import print_function

import os
import time
import datetime
import pipes
import mysql.connector
import tarfile
import sys
from pathlib import Path
 
# variable de connexion à la BDD
DB_HOST = 'p6-test'
DB_USER = 'dbadmin'
DB_USER_PASSWORD = 'dbxpass'
DB_NAME = 'dbwordpress'

# variable du chemin qui recevra le fichier de sauvegarde
backupPath = '/home/dbadmin/workDirectory/0-python_mysql/0-remoteBackup'
#****************************

try: 
    # variable de connexion à la bdd
    cnx = mysql.connector.connect(user=DB_USER, password=DB_USER_PASSWORD, host=DB_HOST,  database=DB_NAME)
    # test de connexion
    cnx.cursor();

except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("Il y a un problème avec l'utilisateur ou le password")
        exit();
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print("La database n'existe pas")
        exit();
    else:
        print("code erreur : " + err)
        exit();
else:
    cnx.close();
    # test de connexion de contrôle OK 
   
    # Création de la variable du fichier au format date-time
    folderDateTime = time.strftime('%Y%m%d-%H%M%S')
    # Création du chemin complet complet du fichier du futur fichier de sauvegarde
    backupNow = backupPath + '/' + folderDateTime
    # Test de l'existance ou non du fichier de sauvagrde
    try:
        # vérifie les attributs de dossiers - Si les valerus sont null c'est que le dossier n'existe pas
        os.stat(backupNow)
    except:
        # Créé le dossier de sauvegarde
        os.mkdir(backupNow)
    
    print ("\n-1- Contrôle l'existence du chemin pour la création du dossier de sauvegarde\n")
    # nom du fichier de sauvegarde sans extension
    bddName = DB_NAME
    dumpfile = bddName +".sql"
    # création de  la variable  lets_dump qui va pousser les datas de celle-ci dans le dossier backupNow
    lets_dump = "mysqldump --databases -c " + DB_NAME  + " -P " + DB_HOST + " -u " + DB_USER + " -p" + DB_USER_PASSWORD + " --single-transaction  --no-tablespaces --skip-opt " + bddName + " > " + pipes.quote(backupNow) + "/" + dumpfile
    # execution de la commande mysqldump
    os.system(lets_dump)
    print("\n-2- Le dump de la bdd c'est effectué avec succès")    
    # création de la commande de compression avec GZIP
    fileGzipCompress = "gzip " + pipes.quote(backupNow) + "/" + bddName + ".sql"
    # Compression depuis la commande fileGzipCompress
    os.system(fileGzipCompress)

    print("\n")
    print ("*******************************************************************************************")
    print("Le dump de la bdd  et la compression du fichier de la bdd ce sont bien effectués avec succès via le server : " + DB_HOST )
    print ("La sauvegarde depuis se trouve dans le dossier " + backupNow + "/" + bddName +".sql.gz")
    print ("**** done *********************************************************************************\n")

# Le script se lance depuis le dossier principal 0-python_mysql à partir de la commande shell :
# python3 v1.0.1-pythonSimpleDump.py