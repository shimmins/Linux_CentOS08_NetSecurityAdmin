#!/bin/bash

cd /home
tar cvzf /backup/backup_$(date +'%m%d_%H%M%S').tar.gz .
