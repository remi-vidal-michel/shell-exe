#./bin/bash 

while IFS=, read -r columnId columnPrenom columnNom columnMdp columnRole || [ -n "$columnRole" ];
do 
        varusername=$columnPrenom$columnNom
        varpassword=$columnMdp
        cleanusername="$(echo "${varusername}" | tr -d '[:space:]')"
        sudo useradd -p $(openssl passwd -1 $varpassword) $varusername
        if [ $columnrole=Admin ];
then 
        sudo usermod -aG sudo $cleanusername
fi
echo "User created : $varusername  Password : $varpassword"
done < Shell_Userlist.csv
