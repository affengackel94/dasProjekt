!/bin/bash

# Starten von Meteor
sleep 10
( cd /app ; meteor run )

# don't exit
/usr/bin/tail -f /dev/null