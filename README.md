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

Manual DOcker engine installation on ubutnu 

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin**

1. Before you install Docker Engine for the first time on a new host machine, you need to set up the Docker repository. Afterward, you can install and update Docker from the repository.

1.a Set up Docker's apt repository.


# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
Note

If you use an Ubuntu derivative distro, such as Linux Mint, you may need to use UBUNTU_CODENAME instead of VERSION_CODENAME.

2. Install the Docker packages.

Latest Specific version ,  To install the latest version, run:


 sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

3. Verify that the Docker Engine installation is successful by running the hello-world image.


 sudo docker run hello-world
This command downloads a test image and runs it in a container. When the container runs, it prints a confirmation message and exits.


****************************************************
