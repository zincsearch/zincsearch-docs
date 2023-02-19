# Architecture and deployment modes

ZincObserve can be run in single node or in HA mode in a cluster.

## Single Node

### Sled and Local disk

Use this mode for light usage and testing. This is the default mode for running ZincObserve.

![Single node architecture using Sled and local disk](./images/arch-sled-local.png)

### Sled and Object storage

![Single node architecture using sled and s3](./images/arch-sled-s3.png)

### etcd and object storage

![Single node architecture using etcd and s3](./images/arch-etcd-s3.png)

## High Availability mode

Local disk storage is not supported in HA mode

### etcd and object storage
![Single node architecture using etcd and s3](./images/arch-ha.png)

Router, Querier and ingester nodes can be horizontally scaled to accomodate for higher traffic.

## Components

### Ingester

### Querier

### Compactor

### Router

### AlertManager


