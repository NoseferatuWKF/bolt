#!/bin/bash

read -s -p "password:" pass; \
echo $pass > ~/pass; \
ansible-pull -U https://github.com/NoseferatuWKF/ansible.git --ask-become-pass --vault-pass-file ~/pass -t 'osx, secrets, post' playbooks/osx.yml; \
rm ~/pass
