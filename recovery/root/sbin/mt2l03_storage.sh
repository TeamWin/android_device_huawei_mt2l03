#!/sbin/sh
echo "Running mt2l03_storage.sh" > /dev/kmsg
if [ -e /dev/block/mmcblk0p25 ];
then
	echo "mt2l03_storage.sh found p25, split storage setup" > /dev/kmsg
else
	echo "mt2l03_storage.sh NO p25, unified storage setup" > /dev/kmsg
	cp /etc/recovery.fstab.unified /etc/recovery.fstab
fi
