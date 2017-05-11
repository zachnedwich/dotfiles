#!/bin/sh

REPOSITORY=xxxxx@xxxxxxxxxxx:repo
LogPath=/var/log/borg/borg.log
export BORG_PASSPHRASE='xxxxxxxxxxxxxxx'
export BORG_REMOTE_PATH=/usr/local/bin/borg1
echo Starting, logging at $LogPath
savelog -n -c 7 $LogPath

borg create -v -p --stats --compression lz4 \
    --remote-path $BORG_REMOTE_PATH     \
    $REPOSITORY::'{hostname}-{now:%Y-%m-%d_%H-%M-%S}'    \
    /mnt/storage/Backup >> $LogPath 2>&1

# Use the `prune` subcommand to maintain 7 daily, 4 weekly and 6 monthly
# archives of THIS machine. The '{hostname}-' prefix is very important to
# limit prune's operation to this machine's archives and not apply to
# other machine's archives also.
borg prune -v --list $REPOSITORY --prefix '{hostname}-' \
    --keep-daily=7 --keep-weekly=4 --keep-monthly=6 >> $LogPath 2>&1
echo Done
