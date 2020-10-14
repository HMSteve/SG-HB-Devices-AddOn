#!/bin/sh

ADDON_NAME=sg-hb-devices-addon

rm ${ADDON_NAME}.tgz
cd src
chmod 755 update_script
chmod 755 addon/install_*
chmod 755 addon/uninstall_*
chmod 755 addon/update-check.cgi
chmod 755 addon/patchworker
chmod 755 rc.d/*

tar -zcf ../${ADDON_NAME}.tgz *
echo "tar created."
cd ..
