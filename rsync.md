
The command you need is this one:

sudo rsync -aAXv --delete --exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/tmp/* --exclude=/run/* --exclude=/mnt/* --exclude=/media/* --exclude="swapfile" --exclude="lost+found" --exclude=".cache" --exclude="Downloads" --exclude=".VirtualBoxVMs" --exclude=".ecryptfs" /source /destination

You can also add the option --dry-run to simulate the backup process.

The command to restore your system is shorter:

sudo rsync -aAXv --delete --exclude="lost+found" /backup /system

