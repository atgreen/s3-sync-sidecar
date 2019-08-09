s3-sync-sidecar
=================

This container will sync file content between container storage and
remote s3 buckets.

To copy from s3 to local storage, set the following environment
variables:

    `LOCALINBOX`    : the file path to which s3 content will be synced.
    `S3REMOTEOUTBOX`: the S3 URL endpoint (as per aws cli docs).

To copy from local storage to s3, set the following environment
variables:

    `S3REMOTEINBOX` : the remote S3 URL endpoint (as per aws cli docs).
    `LOCALOUTBOX`   : the file path to from file content will be synced.

Only the receiver should delete the content when they are finished
with it.

LOCALINBOX and LOCALOUTBOX should not be the same path.

S3REMOTEOUTBOX and S3REMOTEINBOX should no be the same bucket.

Feedback welcome!
