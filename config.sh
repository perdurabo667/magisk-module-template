#!/system/bin/sh
# Magisk module installation script

SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false

# Set permissions for your tool
set_permissions() {
  set_perm $MODPATH/system/bin/osint-tool.sh 0 0 0755
}
