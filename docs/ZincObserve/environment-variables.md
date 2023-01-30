
We prefer environment variables for configuration as opposed to configuration files or command line options as its easier to provide environment variables in a containerized environment as well as local setup.

## common

| Environment Variable          | Default Value | Mandatory     | Description                                                               |
| ----------------------------- | ------------- |-------------- | ------------------------------------------------------------------------- |
| ZIOX_USER_NAME         | -             | On first run  | First/super admin user  |
| ZIOX_USER_PASSWORD     | -             | On first run  | Password for first/super admin user |
| ZIOX_LOCAL_MODE        | true          | No            | If local mode is set to true, we just support single node deployment, false indicated cluster mode deployment, supports multiple nodes with different roles. For local mode you also need configure `sled db`, for cluster mode you also need config `redis`. |
| ZIOX_LOCAL_MODE_STORAGE | disk         | No            | Applicable only for local mode , by default local disk is used as stoarge, we als0 support s3 in local mode. |
| ZIOX_NODE_ROLE         | all           | No            | Possible values are : all, ingester, quierier, compactor, router, alertmanager |
| ZIOX_HTTP_PORT         | 5080          | No            | zinc server listen http port |
| ZIOX_GRPC_PORT         | 5081          | No            | zinc server listen grpc port |
| ZIOX_GRPC_TIMEOUT      | 600           | No            | grpc query timeout, default is 500 seconds | 
| ZIOX_GRPC_ORG_HEADER_KEY | zinc-org-id | No            | TODO |
| ZIOX_ROUTE_TIMEOUT     | 600           | No            | timeout for router node.             |
| ZIOX_INSTANCE_NAME     | -             | No            | in the cluster mode, each node has a instance name, default is instance hostname. |
| ZINC_DATA_DIR                 | ./data        | No            | Defaults to "data" folder in current working directory if not provided.   |
| ZIOX_DATA_WAL_DIR             | ./data/wal/   | No            | local WAL data directory. |
| ZIOX_DATA_STREAM_DIR          | ./data/stream/   | No         | local stream data storage directory ,applicable only for local mode. |
| ZIOX_TIME_STAMP_COL           | _timestamp    | No            | for each log line, if not present with this as key , we add a timestamp with this as key, used to query with time range. |
| ZIOX_WIDENING_SCHEMA_EVOLUTION | false        | No            | default we can add new column but no support change data type of exists files. |
| ZIOX_FEATURE_PER_THREAD_LOCK  | false         | No            | default we shared a lock for each thread for WAL, enable this option can create per lock for per thread, it can improve ingest performance, but will create more small data files, but at the finally we will use a compactor to merge it to big files. |
| ZIOX_FEATURE_FULLTEXT_ON_ALL_FIELDS | false   | No            | default full text search just on `log`, `message`, `data` or use selected fileds. enable this option will do full text search on each field. |
| ZIOX_UI_ENABLED               | true          | No            | default we enable emebed UI, you can disable it. |
| ZIOX_METRICS_DEDUP_ENABLED    | true          | No            | TODO |
| ZIOX_TRACING_ENABLED          | false         | No            | enable it will send tracing information to remote trace server. |
| OTEL_OTLP_HTTP_ENDPOINT       | -             | No            | the remote trace server endpoint. |
| ZIOX_TRACING_HEADER_KEY       | Authorization | No            | the remote trace server endpoint authentication header key. |
| ZIOX_TRACING_HEADER_VALUE     | -             | No            | the remote trace server endpoint authentication header value. |
| ZIOX_MAX_FILE_SIZE_ON_DISK    | 10            | No            | max WAL file size before move to storage. default is 10MB, unit: MB |
| ZIOX_MAX_FILE_RETENTION_TIME  | 600           | No            | the max WAL file retention ttl, default is 600s, unit: second |
| ZIOX_FILE_PUSH_INTERVAL       | 10            | No            | the interval of job to move WAL to storage. default 10s, unit: second |
| ZIOX_FILE_MOVE_THREAD_NUM     | -             | No            | the thread num of job to move WAL to storage, default equal to cpu_num. |
| ZIOX_QUERY_THREAD_NUM         | -             | No            | the thread num of search to query data files. |
| ZIOX_TS_ALLOWED_UPTO          | 5             | No            | just allow ingest `now - 5 hours` data. |
| ZIOX_METRICS_LEADER_PUSH_INTERVAL | -         | No            | TODO |
| ZIOX_METRICS_LEADER_ELECTION_INTERVAL | -     | No            | TODO |
| ZIOX_COMPACT_ENABLED          | true          | No            | enable compact for small files. |
| ZIOX_COMPACT_INTERVAL         | 600           | No            | the interval of job to compact small files into big files. default is 600s, unit: second |
| ZIOX_COMPACT_MAX_FILE_SIZE    | 256           | No            | the max file size of single file. after compact single file will not over this value. default is 256MB, unit: MB |
| ZIOX_MEMORY_CACHE_ENABLED     | true          | No            | enable memory cache for storage files. default is true, we will cache the latest files for accelerate query. |
| ZIOX_MEMORY_CACHE_CACHE_LATEST_FILES | false  | No            | default we just cache the files which queried, enable this option, we will cache the latest files, we will cache the file when a new file generate. this can accelerate the query for latest 24 hours. Of course, the memory cache has max size limit, maybe just can cache the latest 2 hours files, it depends on the max cache size. |
| ZIOX_MEMORY_CACHE_MAX_SIZE    | -             | No            | default we use the 50% of the total memory as memory cache. you can set it. unit: MB |
| ZIOX_MEMORY_CACHE_RELEASE_SIZE | -            | No            | default we will drop 1% files in memory cache once time when the cache is full. you can set it. unit: MB |
| RUST_LOG                      | info          | No            | log level, default is info, support: error, warn, info, debug, trace |


> For local mode, we use sled db as the metadata.
> For cluster mode, we use etcd as the metadata. we will support redis, postgreSQL for cluster mode.

## Etcd

| Environment Variable          | Default Value | Mandatory     | Description                                                               |
| ----------------------------- | ------------- |-------------- | ------------------------------------------------------------------------- |
| ZIOX_ETCD_ADDR                | localhost:2379 | No           | default etcd endpoint |
| ZIOX_ETCD_PREFIX              | /zinc/oxide/  | No            | etcd keys prefix      |
| ZIOX_ETCD_CONNECT_TIMEOUT     | 2             | No            | endpoint connect timeout, unit: second |
| ZIOX_ETCD_COMMAND_TIMEOUT     | 5             | No            | command execute timeout, unit: second |
| ZIOX_ETCD_LOCK_WAIT_TIMEOUT   | 60            | No            | max ttl for a lock, the lock will report timeout over this limit. |
| ZIOX_ETCD_LOAD_PAGE_SIZE      | 10000         | No            | we will use pagenation for load data from etcd. |
| ZIOX_ETCD_USER                | -             | No            | authentication, username, refer: https://etcd.io/docs/v3.5/op-guide/authentication/rbac/ |
| ZIOX_ETCD_PASSWORD            | -             | No            | authentication, password |
| ZIOX_ETCD_CLIENT_CERT_AUTH    | false         | No            | authentication with TLS, default is disabled, refer: https://etcd.io/docs/v3.5/op-guide/security/ |
| ZIOX_ETCD_TRUSTED_CA_FILE     | -             | No            | authentication with TLS, ca file path |
| ZIOX_ETCD_CERT_FILE           | -             | No            | authentication with TLS, cert file path |
| ZIOX_ETCD_KEY_FILE            | -             | No            | authentication with TLS, key file path |
| ZIOX_ETCD_DOMAIN_NAME         | -             | No            | authentication with TLS, cert domain name, default is empty, we will use the domain in the cert |


## sled db

| Environment Variable          | Default Value | Mandatory     | Description                                                               |
| ----------------------------- | ------------- |-------------- | ------------------------------------------------------------------------- |
| ZIOX_SLED_DATA_DIR            | ./data/db/    | No            | sled db data directory. |
| ZIOX_SLED_PREFIX              | /zinc/oxide/  | No            | sled db keys prefix . |


## S3

| Environment Variable          | Default Value | Mandatory     | Description                                                               |
| ----------------------------- | ------------- |-------------- | ------------------------------------------------------------------------- |
| ZIOX_S3_SERVER_URL            | -             | No            | default for aws s3 you can leave it empty, but for `minIO`, `gcs` you should config it. |
| ZIOX_S3_REGION_NAME           | -             | No            | region name |
| ZIOX_S3_ACCESS_KEY            | -             | No            | access key |
| ZIOX_S3_SECRET_KEY            | -             | No            | secret key |
| ZIOX_S3_BUCKET_NAME           | -             | No            | bucket name |
