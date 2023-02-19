# Architecture and deployment modes (In progress)

ZincObserve can be run in single node or in a cluster in HA mode.

## Single Node

### Log forwarder -> ZincObserve (Sled) -> Local disk 

Use this mode for light usage and testing. This is the default mode for running ZincObserve.

![Single node architecture using Sled and local disk](./images/arch-sled-local.png)

### Log forwarder -> ZincObserve (Sled) -> S3/MinIO/GCS 

![Single node architecture using sled and s3](./images/arch-sled-s3.png)

### Log forwarder -> ZincObserve (etcd) -> S3/MinIO/GCS  

![Single node architecture using etcd and s3](./images/arch-etcd-s3.png)

## High Availability mode

### Log forwarder -> ZincObserve (etcd) -> S3/MinIO/GCS  (HA mode)

![Single node architecture using etcd and s3](./images/arch-ha.png)

Router, Querier and ingester nodes can be horizontally scaled to accomodate for higher traffic.

