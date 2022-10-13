#!/bin/bash

chall=$(curl -i https://alcasar.laplateforme.io/intercept.php -L  | grep -o -P '(?<=challenge=).*(?=&called)')
curl -H "Content-Type: multipart/form-data" -X POST -F challenge=$chall -F username=remi.vidal-michel@laplateforme.io -F password=mwVHS8j2 -F button=Authentication https://alcasar.laplateforme.io/intercept.php -L