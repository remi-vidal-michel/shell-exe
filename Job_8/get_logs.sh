#!/bin/sh
d=$(date +%d-%m-%Y-%H-%M)
grep -a "session opened" /var/log/auth.log | wc -l > number_connection-$d
tar -zcvf number_connection-$d.tar.gz number_connection-$d
mv number_connection-$d.tar.gz /home/dofus/Documents/Job8/Backup
rm number_connection-$d