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

# Install Ansible
cd ~/src/cloud9-dev
/bin/bash ./setup.sh

# Copy Ansible Secrets Template to ~/.ansible_secrets.yml
# Configure with keys as needed
cp -n ansible_secrets_example.yml ~/.ansible_secrets.yml

# Install Ansible Galaxy dependencies
ansible-galaxy install -r requirements.yml

# Run Ansible playbook
ansible-playbook local.yml
```

## Alternative Setup

An alternative approach using `ansible-pull`.

```bash
# Install Ansible
sudo /usr/bin/pip-2.7 install ansible

# Install Galaxy requirements
ansible-galaxy install yatesr.timezone

# Touch Secrets File
touch ~/ansible_secrets.yml

# Run Playbook
ansible-pull --purge --accept-host-key -U https://github.com/redconfetti/cloud9-dev.git -i '127.0.0.1,' --extra-vars "github_personal_access_token=abcdefg0123456" local.yml 
```
