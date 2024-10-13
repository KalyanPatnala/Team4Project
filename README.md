TerraForm 

install terraform and vscode in local machine /laptop

Terraform command :-

terraform init 
terraform fmt 
terraform validate
terraform plan 
terraform apply

used to setup terraform log in local mahcine/laptop 
terraform login


**********************************************************

## install Ansible on  EC2 instance 
1. Log into vm ssh -i "~/.ssh/id_rsa" ec2-user@13.127.8.187
2. sudo -i
3. hostnamectl hostname master
4. install ansible

dnf install ansible-core
   
ansible –version 

ansible –help

we will have to update pub key of master machine into clients to generate the oub key , follow below procedure  

cd /root
cd ~/.ssh 
ls -ltr
ssh-keygen 
just press enter 
ls -ltr 
cat id_rsa.pub

test the ssh key from the files log into clients
sudo -i 
hostnamectl hostname client1
cd /root/
cd .ssh/
cat >authorized_keys

update the pub key copied form master server  and update in authorised_key of clients. 
cd /etc/ansible
take a copy of host file 
using cp hosts hosts.org 
now add clients machines entry 
cat >hosts

example :- 

[webserver]
worker1
master 


## Ansible commands 

- syntax check 
ansible-playbook --syntax-check play1.yaml

- dry run
ansible-playbook -C play1.yaml  

- run 
ansible-playbook play1.yaml  


*************************************************************************

# Docker instlalaton on ubuntu 

to install  DOcker engine installation on ubutnu follow the link and run the commands specfied in  step 1 and 2 . 

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin**


****************************************************
