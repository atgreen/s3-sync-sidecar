#!/bin/sh

set -x

while true; do
    [ "x${S3REMOTEOUTBOX}" != "x" ] && [ "x${LOCALINBOX}" != "x" ] && aws s3 sync --delete ${S3REMOTEOUTBOX} ${LOCALINBOX} ;
    [ "x${S3REMOTEINBOX}" != "x" ] && [ "x${LOCALOUTBOX}" != "x" ] && aws s3 sync --delete ${LOCALOUTBOX} ${S3REMOTEINBOX} ;
    sleep 5 ;
done

