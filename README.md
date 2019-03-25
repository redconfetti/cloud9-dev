# cloud9-dev

Ansible playbook for Cloud9 development environment

Sets up a new environment within a AWS Cloud9 EC2 instance running Amazon Linux
AMI.
## Setup

```bash
# Clone repository
mkdir -p ~/src
cd ~/src
git clone https://github.com/redconfetti/cloud9-dev.git
cd ~/src/cloud9-dev

# switch git repo to use SSH
git remote set-url origin git@github.com:redconfetti/cloud9-dev.git

# Configure Git
git config --global user.name "Jason Miller"
git config --global user.email jason@redconfetti.com

# Generate SSH key and output public key
ssh-keygen -t rsa -b 4096 -C "jason@redconfetti.com"
cat ~/.ssh/id_rsa.pub
```

Go to [Github - Add a new SSH key](https://github.com/settings/ssh/new)

```bash
# Install Ansible
cd ~/src/cloud9-dev
/bin/bash ./setup.sh

# Run Ansible playbook
ansible-playbook local.yml
```

Alternative Setup
```bash
# Install Ansible
sudo /usr/bin/pip-2.7 install ansible

# Run Playbook
ansible-pull -U git@github.com:redconfetti/cloud9-dev.git local.yml
```

### Start Web App

After getting a Ruby on Rails app configured and connected to databases,
run the server using the following:

```shell
rails s -b $IP -p $PORT
```
