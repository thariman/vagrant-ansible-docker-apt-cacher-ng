echo "vagrant" > hosts.txt
vagrant ssh-config | egrep "User |HostName|Port|IdentityFile" >> hosts.txt
sed -i '' "s#User #ansible_ssh_user=#g" hosts.txt
sed -i '' "s#HostName #ansible_ssh_host=#g" hosts.txt
sed -i '' "s#Port #ansible_ssh_port=#g" hosts.txt
sed -i '' "s#IdentityFile #ansible_ssh_private_key_file=#g" hosts.txt
echo 'ansible_ssh_opt=" -o StrictHostKeyChecking no"' >> hosts.txt
echo $(cat hosts.txt) > hosts2.txt
