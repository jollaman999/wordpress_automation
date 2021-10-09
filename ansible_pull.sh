#!/bin/bash
sudo apt update
sudo apt install ansible git -y
sudo ansible-pull -U https://github.com/jollaman999/wordpress_automation.git -C jolla_terraform -i inventory.ini web.yml
