/sbin/mount -uw /
mkdir -p /System/Library/Extensions-off
mv /System/Library/Extensions/AMDRadeonX3000.kext  /System/Library/Extensions-off/
touch /System/Library/Extensions/
exit 0
