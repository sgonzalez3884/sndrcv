#!/bin/sh

grep '^.*Public \/mnt\/public.*cifs' /etc/mtab > /dev/null 2>&1
if [ $? -ne 0 ]; then
	umount /mnt/public > /dev/null 2>&1
	mount /mnt/public || \
	exit $?
fi

for I in /mnt/scripts/sndrcv/config/*.ini ; do
	nice perl -w /mnt/scripts/sndrcv/sndrcv "$I"
done

exit 0
