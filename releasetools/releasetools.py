def FullOTA_InstallEnd(info):
    info.script.AppendExtra('mount("ext4", "EMMC", "/dev/block/platform/bootdevice/by-name/system", "/system");');
    info.script.AppendExtra('run_program("/sbin/sed", "-i", "/fuseblk/d", "/system/etc/selinux/plat_sepolicy.cil");');
    info.script.AppendExtra('unmount("/system");');
    info.script.AppendExtra('mount("ext4", "EMCC", "/dev/block/platform/bootdevice/by-name/vendor", "/vendor");');
    info.script.AppendExtra('run_program("/sbin/sh", "/system/bin/patch_ril.sh");');
    info.script.AppendExtra('unmount("/vendor");');
