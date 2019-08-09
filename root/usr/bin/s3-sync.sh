#!/bin/sh

while true; do
    [ -v "${S3REMOTEOUTBOX}" ] && [ -v "${LOCALINBOX}" ]  && aws sync --delete ${S3REMOTEOUTBOX} ${LOCALINBOX} ;
    [ -v "${S3REMOTEINBOX}" ] && [ -v "${LOCALOUTBOX}" ]  && aws sync --delete ${S3REMOTEINBOX} ${LOCALOUTBOX} ;
    sleep 5 ;
fi
