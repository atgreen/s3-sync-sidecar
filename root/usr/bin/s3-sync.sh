#!/bin/sh

while true; do
    [ ! -v "${S3REMOTEOUTBOX}" ] && [ ! -v "${LOCALINBOX}" ] || aws s3 sync --delete ${S3REMOTEOUTBOX} ${LOCALINBOX} ;
    [ ! -v "${S3REMOTEINBOX}" ] && [ ! -v "${LOCALOUTBOX}" ] || aws s3 sync --delete ${LOCALOUTBOX} ${S3REMOTEINBOX} ;
    sleep 5 ;
done

