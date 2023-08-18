#!/bin/bash
# #Usage:
#    USER=<homedir username here>
#    rsync -aP --exclude-from=rsync-homedir-excludes.txt /home/$USER/ /media/$USER/linuxbackup/home/$USER/

DESTDIR=liupeng@mybooklive2

rsync -arzv --delete --sparse --exclude-from=./rsync-homedir-excludes.txt $HOME/ $DESTDIR:/shares/myhome/
