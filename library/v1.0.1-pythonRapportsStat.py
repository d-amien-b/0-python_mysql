#!/usr/bin/python

#**********************************************************************************
# Module de création de statistique basique et ou de listes à partir de requete sql
# *********************************************************************************
# avec génération de fichiers de rapports automatiques (données exportées en json)
# Il faut renseigner des requètes sql explicites après les avoir vérifier au préalable !
# Les datas de type datetime ne se serialize pas encore via les rapports en json. Elles sont à proscrire dans les requêtes
# Ce module peut être utiles pour récupérer des informations depuis une base de donnée en les transférant dans des fichiers au format JSON.
# Il ne reste plus qu'à comparer ces informations d'un rapport à un autre pour mesurer l'intérêt de cette automatisation.
# C'est utile pour comparer le nombre d'utilisateur d'une periode sur l'autre, 
# de savoir combien d'articles ont été écris par un utilisateur en particulier ou non.
# C'est aussi intéressant de savoir combien de fois un terme ou un mot quelconque a été utilisé.
# Cela peut aussi service tout simplement pour générer des listes (utilisateurs / adresse mail) via fichiers json.
# Vérifier des logs pour un traitement ultérieur....
# ce pluging demande a être approfondit mais sa base est déjà fonctionnelle
# Damien Burdo 12 avril 2021
# p6 - OPENCLASSROOM  - Formation Administrateur Infrastructure et cloud
#*************************************************************************
 
# Import required python libraries and more
from __future__ import print_function
import sys
import os
import time
import datetime
# from datetime import datetime, date, time timezone
import pipes
import json
import mysql.connector
from mysql.connector import errorcode, MySQLConnection, Error
from pathlib import Path
import tarfile

# Variables de connexion + Dossier de sauvegarde de la bdd
DB_HOST = 'p6-test' 
DB_USER = 'dbadmin'
DB_USER_PASSWORD = 'dbxpass'
DB_NAME = 'dbwordpress'

BACKUP_PATH = '/home/dbadmin//workDirectory/0-remoteBackup'

#****** variable spécifique pour bdd wordpress *************
prefixTable = 'wp_7777_' 
tableToCreate = 'bddRapports'
tablebddbackup = prefixTable + tableToCreate


# Champ temporaire de la table cible
champRapport = "rapports"
# ******* for local

dateTimeForFile = time.strftime('%Y%m%d-%H%M%S')
fileReportPath = "/home/dbadmin/workDirectory/0-python_mysql/"
baseReportFolder = "0-rapports/"
folderReport = "report-{}".format(dateTimeForFile)
         

# Function lance_rapport()***************************************
# Function principale qui lance la génération des rapports
# 1 - vérification de la connexion à la database
# 2 - Vérification de l'existence d'un table temporaire pour le traitement des données
# 3 - Ajout de sous-tableaux de 2 champs dans le tableau principal. 
# 4 - les 2 variables  sont respectivement :
#     - aboutX : le nom du fichier du rapport -> veuillez à le rendre explicite -> là aussi, camelcase ou underscore et pas d'espaces
#     - query_sentX : la requête SQL brute qui sera executée
# 5   - Function add_data_to_report(X,Y) comprenant 2 arguments va se charger de traiter de la génération l'arborescence des dossiers et fichiers json


# -1-
def lance_rapport():

    try: 
        cnx = mysql.connector.connect(user=DB_USER , password=DB_USER_PASSWORD , host=DB_HOST , database=DB_NAME )

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
        print("\n*** Rapport du {} *********************** \n".format(dateTimeForFile))
        print("-1- Connexion est établie !!! \n")

        # -2-
        # création d'une seconde connexion avec un table cible temporaire
        # pour traiter les 2 types de request au format de sortie classique ou sous forme de dictionnaire pour les fichiers json
        cursor = cnx.cursor()
        cursorDict = cnx.cursor(dictionary=True)
        query =("CREATE TABLE IF NOT EXISTS {} ({} VARCHAR(255))".format(tablebddbackup,champRapport))
        cursor.execute(query)
        cursorDict.execute(query)

        print("-2- Table créé \n")
        print("***done *********************** \n")

        # -3-
        # Tableau dans lequel il faut renseigner 2 variables par sous tableaux:
        # La variable aboutX : qui sera le nom du rapport - Utiliser de préférence le camelCase ou les underscores- !!! Proscrire les espaces !!!
        # La variable query_sentX : qui correspont à la requête sql de type SELECT qui sera exécutée
        # Attention aux variables des requests * !!! -> !!!!! les variables datetime des requests ne se serialize pas pour la sortie json actuellement
        listRequests = [ 
            [{"aboutX": "ListeUserAllRaw", "query_sentX" : "SELECT  id, user_login, user_email, user_url from dbwordpress.wp_7777_users"}],
            [{"aboutX": "ListeUser2ParMail", "query_sentX" : "SELECT user_email from dbwordpress.wp_7777_users"}],
            [{"aboutX": "ListeUserParLogin", "query_sentX" : "SELECT user_login from dbwordpress.wp_7777_users"}],
            [{"aboutX": "CountArticleInPost", "query_sentX" : "SELECT COUNT(*) FROM dbwordpress.wp_7777_posts WHERE dbwordpress.wp_7777_posts.post_content LIKE '%article%'"}],
            [{"aboutX": "ListCommentaires", "query_sentX" : "SELECT  `comment_agent`, `comment_approved`, `comment_author`, `comment_author_email`, `comment_author_IP`, `comment_author_url`, `comment_content`, `comment_ID`, `comment_karma`, `comment_parent`, `comment_post_ID`, `comment_type`, `user_id` FROM dbwordpress.wp_7777_comments"}],
            [{"aboutX": "ListTaxonomy", "query_sentX" : "SELECT * FROM dbwordpress.wp_7777_term_taxonomy"}],        
        ]

        # -4- 
        # Variables traitées d'une manière pour le print et de l'autre au format dictionnaire pour la génération des fichiers
        for items in listRequests:
            # i vaut 0 et correspond au tableau de la seconde dimension 
            i = 0;
            print("\n******{} - Rapport {} ************ \n".format(dateTimeForFile, items[i]["aboutX"]))
            print(items[i]["aboutX"]+"\n")
            print(items[i]["query_sentX"]+"\n")

            # execute la requête de l'item 
            cursorDict.execute(items[i]["query_sentX"])
            # récupère les datas via la variable result_the_query
            result_the_query = cursor.fetchall()
            # lance la function add_data_to_report avec les 2 arguments
            add_data_to_report(items[i]["aboutX"],result_the_query)

            print("*** Résulat requête : ************")
            print(result_the_query)
            print("*** done *************************\n")


    # fermeture des connexionx
    cursor.close()
    cursorDict.close()
    cnx.close()

# -5- 
# function def add_data_to_report() 
# function avec 2 arguments : newfile = nom du fichier de rapport et datasent = la requete en bdd
# Ils correspondent respectivement aux 2 variables aboutX et query_sentX plus loin.
def add_data_to_report(newFile,dataSent):
    # Dossier de base : variable -> baseReportFolder
    baseReport = os.path.join(fileReportPath, baseReportFolder)
    if not os.path.exists(baseReport):
        os.mkdir(baseReport)
    else:   
        # Dossier variable créer automatiquement : folderReport
        newFolderReport = os.path.join(baseReport, folderReport)
        while not os.path.exists(newFolderReport):
            os.mkdir(newFolderReport)

        # Affiche le chemin du dossier du rapport
        print("le chemin est : {}\n".format(newFolderReport))

        # Fichiers créés relativement au tableau : listRequests -> 1 fichier par requête
        file_name_to_append = newFolderReport + "/" + newFile + ".json"
        with open(file_name_to_append, 'a+') as file_object:
            json.dump(dataSent, file_object)


# Le script se lance depuis le dossier principal 0-python_mysql à partir de la commande shell :
# python3 v1.0.1-pythonRapportsStat.py 
lance_rapport()

