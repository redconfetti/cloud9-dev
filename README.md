# cloud9-dev

Ansible playbook for Cloud9 development environment

Sets up a new environment within a AWS Cloud9 EC2 instance running Amazon Linux AMI.

This relies on [AWS Secrets Manager]

## Setup

```bash
git clone https://github.com/redconfetti/cloud9-dev.git ~/.cloud9-dev
cd ~/.cloud9-dev
./setup.sh

# switch git repo to use SSH
git remote set-url origin git@github.com:redconfetti/cloud9-dev.git
```

[AWS Secrets Manager]: https://aws.amazon.com/secrets-manager/


### Start Web App

After getting a Ruby on Rails app configured and connected to databases,
run the server using the following:

```shell
rails s -b $IP -p $PORT
```
