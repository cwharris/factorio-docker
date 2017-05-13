#!/bin/bash

if [ ! -f $SAVEFILE ]; then
    /opt/factorio/bin/x64/factorio --create $SAVEFILE
else
    cp $SAVEFILE $(dirname $SAVEFILE)/backup-$(date +%Y-%m-%d-%H-%M)-$(basename $SAVEFILE)
fi

/opt/factorio/bin/x64/factorio --start-server $SAVEFILE
