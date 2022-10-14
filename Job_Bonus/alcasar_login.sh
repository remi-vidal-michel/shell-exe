#!/bin/bash
if [ -z "$1" ]
then echo "Erreur : Vous devez fournir vos identifiants de connexion" ; exit ; fi
chall=$(curl -i -s https://alcasar.laplateforme.io/intercept.php -L | grep -o -P '(?<=challenge=).*(?=&called)')
if [ -z "$chall" ]
then echo "Erreur : Vous êtes déjà connecté" ; exit ; fi
curl -s -o /dev/null -H "Content-Type: multipart/form-data" -X POST -F challenge=$chall -F username=$1 -F password=$2 -F button=Authentication https://alcasar.laplateforme.io/intercept.php -L
if ping -c1 google.com &> /dev/null
then echo "Succès ! Vous êtes connectés" 
else echo "Erreur de connexion : vos identifiants sont peut-être incorrects ?" ; fi