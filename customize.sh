#!/system/bin/sh
# This script copies the OSINT script to /data/local/tmp

cp $MODPATH/scripts/osint-harvester.sh /data/local/tmp/osint-harvester.sh
chmod +x /data/local/tmp/osint-harvester.sh

ui_print "OSINT Harvester script installed to /data/local/tmp/osint-harvester.sh"
ui_print "Run it in Termux: bash /data/local/tmp/osint-harvester.sh"
