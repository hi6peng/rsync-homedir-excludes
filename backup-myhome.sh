#!/bin/bash
# #Usage:
#    USER=<homedir username here>
#    rsync -aP --exclude-from=rsync-homedir-excludes.txt /home/$USER/ /media/$USER/linuxbackup/home/$USER/

DESTDIR=/media/$USER/mydata/Backups

rsync -arzv --delete --sparse --exclude-from=./rsync-homedir-excludes.txt $HOME/ $DESTDIR/home-$USER/
