#!/bin/bash

chall=$(curl -i https://alcasar.laplateforme.io/intercept.php --location-trusted | grep -o -P '(?<=challenge=).*(?=&called)')

curl \
    -d "challenge=$chall&username=remi.vidal-michel@laplateforme.io&password=mwVHS8j2" \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -X POST https://alcasar.laplateforme.io/intercept.php \
    -L 

if [ $chall = '' ]
then echo "Tu es déjà connecté"
else echo $chall
fi