#!/bin/bash
# #Usage:
#    USER=<homedir username here>
#    rsync -aP --exclude-from=rsync-homedir-excludes.txt /home/$USER/ /media/$USER/linuxbackup/home/$USER/

DESTDIR=/media/$USER/Fanxiang/Backups/mydata
MYDATA=/home/$USER/mydata

rsync -arzv --delete --sparse --exclude-from=./rsync-mydata-excludes.txt $MYDATA/ $DESTDIR/
