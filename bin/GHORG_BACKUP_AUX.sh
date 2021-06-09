#!/bin/bash
TOKEN=$(cat ~/.gitea_token)
ghorg clone -s gitea --clone-type=user --token "$TOKEN" --base-url http://192.168.1.207:3000/ -p /home/rr/backup_dev_ghorg_aux_gitea  --protocol ssh rr
