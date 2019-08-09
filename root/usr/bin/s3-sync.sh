#!/bin/sh

if [ -z "$S3REMOTEOUTBOX" ]; then
    echo ERROR: S3REMOTEOUTBOX environment variable missing.
    exit 1
fi

if [ -z "$S3REMOTEINBOX" ]; then
    echo ERROR: S3REMOTEINBOX environment variable missing.
    exit 1
fi

if [ -z "$LOCALOUTBOX" ]; then
    echo ERROR: LOCALOUTBOX environment variable missing.
    exit 1
fi

if [ -z "$LOCALINBOX" ]; then
    echo ERROR: LOCALINBOX environment variable missing.
    exit 1
fi

while true; do
    aws sync --delete ${S3REMOTEOUTBOX} ${LOCALINBOX} ;
    aws sync --delete ${LOCALOUTBOX} ${S3REMOTEINBOX} ;
    sleep 5;
done;
