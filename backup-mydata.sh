#!/bin/bash
# #Usage:
#    USER=<homedir username here>
#    rsync -aP --exclude-from=rsync-homedir-excludes.txt /home/$USER/ /media/$USER/linuxbackup/home/$USER/

DESTDIR=/media/$USER/WD-backup
MYDATA=/data

rsync -arzv --delete --sparse --exclude-from=$HOME/rsync-mydata-excludes.txt $MYDATA/ $DESTDIR/data/
rsync -arzv --delete --sparse --exclude-from=$HOME/rsync-homedir-excludes.txt $HOME/ $DESTDIR/$HOME/
