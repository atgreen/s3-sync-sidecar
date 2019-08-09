#!/bin/sh

while true; do
    [ -v "${S3REMOTEOUTBOX}" ] && [ -v "${LOCALINBOX}" ] && aws sync --delete ${S3REMOTEOUTBOX} ${LOCALINBOX} ;
    [ -v "${S3REMOTEINBOX}" ] && [ -v "${LOCALOUTBOX}" ] && aws sync --delete ${LOCALOUTBOX} ${S3REMOTEINBOX} ;
    sleep 5 ;
done

