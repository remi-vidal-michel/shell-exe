#!/bin/sh
if [ $1 = "Hello" ]
then
echo "Bonjour!"
elif [ $1 = "Bye" ]
then
echo "Au Revoir!"
else
echo "Je ne comprends pas"
fi