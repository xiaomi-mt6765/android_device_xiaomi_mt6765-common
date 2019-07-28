#!/sbin/sh
cp /system/lib/libmtk-ril.so /vendor/lib/libmtk-ril.so
cp /system/lib/librilfusion.so /vendor/lib/librilfusion.so
mkdir -p /vendor/lib64/
cp /system/lib64/libmtk-ril.so /vendor/lib64/libmtk-ril.so
cp /system/lib64/librilfusion.so /vendor/lib64/librilfusion.so
