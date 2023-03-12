> Applicable to open source & enterprise version
# Architecture and deployment modes

ZincObserve can be run in single node or in HA mode in a cluster. 

## Single Node

Please refer to [quickstart](/ZincObserve/quickstart) for single node deployments.

### Sled and Local disk

Use this mode for light usage and testing or if HA is not a requirement for you. (You could still ingest and search over 2 TB on a single machine per day. On a mac M2 in our tests, you can ingest at ~31 MB/Second or 1.8 GB/Min or 2.6 TB/Day with default configuration). This is the default mode for running ZincObserve. Check [Quickstart](/ZincObserve/quickstart) to find various ways to get this setup done.

![Single node architecture using Sled and local disk](./images/arch-sled-local.png)

### Sled and Object storage

![Single node architecture using sled and s3](./images/arch-sled-s3.png)

### etcd and object storage

![Single node architecture using etcd and s3](./images/arch-etcd-s3.png)

## High Availability (HA) mode

Local disk storage is not supported in HA mode. Please refer to [HA Deployment](/ZincObserve/ha_deployment) for cluster mode deployment.

### etcd and object storage
![Single node architecture using etcd and s3](./images/arch-ha.png)

Router, Querier and ingester nodes can be horizontally scaled to accomodate for higher traffic.

Etcd used to store metadata like organization, users, functions, alert rules and cluster node information.

Object Storage store all the data of parquet files and file list index.

## Components

### Ingester

Ingester used to receive ingest request and convert data into storage. 

The data ingestion flow is:

1. receive data from http API request.
1. parse line by line.
1. check if there are some functions used to transform data. will call each transform function by the function order. like `func(row)` and expect return a row, if return empty will drop the line.
1. check timestamp field, convert timestamp, and will set to current timestamp if there is no time field.
1. check stream schema if need to do evoluation.
1. write to WAL file by timestamp hourly.
1. when reach the max file size or the frequency will convert WAL file to parquet file and move to storage(local or s3).

### Querier

Querier used to query data. this type node is stateless.

The data query flow is:

1. receive search request from http API.
1. parse and verify SQL.
1. find the data time range and get file list from file list index.
1. fetch queirer nodes from cluster metadata.
1. do a file list partition by queriers.
1. call gRPC service to dispatch search query to each querier node.
1. collect and merge the result back to user.

Tips:

1. The querier will cache parquet files in memory by default. you can configure it by environment.
1. In distribute environment each querier node just cache a part of the data.
1. We also have an option to enable cache latest parquet files in memory. The ingester will notice qurier to cache the file when ingester generate a new parquet file in storage.
1. We have a limitation of cache size in memory, default is 50% of total memory size. and use LRU to drop old files in cache.

### Compactor

Compactor merge small files into a big file let the search more efficient. Compactor also handle the data policy, full delete stream and update file list index.

### Router

Router provide the UI and dispatch requests to ingester or querier.

### AlertManager

AlertManager run the schedule alert queries and send notification.
