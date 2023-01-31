
We prefer environment variables for configuration as opposed to configuration files or command line options as its easier to provide environment variables in a containerized environment as well as local setup.

## common

| Environment Variable          | Default Value | Mandatory     | Description                                                               |
| ----------------------------- | ------------- |-------------- | ------------------------------------------------------------------------- |
| ZIOX_USER_NAME         | -             | On first run  | User name of first/super admin user  |
| ZIOX_USER_PASSWORD     | -             | On first run  | Password for first/super admin user |
| ZIOX_LOCAL_MODE        | true          | No            | If local mode is set to true ,zinc observe becomes single node deployment, false indicates cluster mode deployment which supports multiple nodes with different roles. For local mode you need to configure `sled db`, for cluster mode you need to config `redis`. |
| ZIOX_LOCAL_MODE_STORAGE | disk         | No            | Applicable only for local mode , by default local disk is used as stoarge, we also support s3 in local mode. |
| ZIOX_NODE_ROLE         | all           | No            | Possible values are : all, ingester, quierier, compactor, router, alertmanager |
| ZIOX_HTTP_PORT         | 5080          | No            | zinc server listen http port |
| ZIOX_GRPC_PORT         | 5081          | No            | zinc server listen grpc port |
| ZIOX_GRPC_TIMEOUT      | 600           | No            | grpc query timeout, default is 500 seconds | 
| ZIOX_GRPC_ORG_HEADER_KEY | zinc-org-id | No            | TODO |
| ZIOX_ROUTE_TIMEOUT     | 600           | No            | timeout for router node.             |
| ZIOX_INSTANCE_NAME     | -             | No            | in the cluster mode, each node has a instance name, default is instance hostname. |
| ZINC_DATA_DIR                 | ./data        | No            | Defaults to "data" folder in current working directory if not provided.   |
| ZIOX_DATA_WAL_DIR             | ./data/wal/   | No            | local WAL data directory. |
| ZIOX_DATA_STREAM_DIR          | ./data/stream/   | No         | streams local data storage directory ,applicable only for local mode. |
| ZIOX_TIME_STAMP_COL           | _timestamp    | No            | for each log line, if not present with this key , we add a timestamp with this key, used for queries with time range. |
| ZIOX_WIDENING_SCHEMA_EVOLUTION | false        | No            | if set to false user can add new columns to data being ingested but changes to data type are not supported for existing data. |
| ZIOX_FEATURE_PER_THREAD_LOCK  | false         | No            | default we share a lock for each thread for WAL, enable this option to create one lock for per thread, it improves ingest performance, but results in more small data files, which will be merged by compactor to create larger merged files. |
| ZIOX_FEATURE_FULLTEXT_ON_ALL_FIELDS | false   | No            | default full text search uses `log`, `message`, `data` or selected stream fileds. enabling this option will perform full text search on each field, may hamper full text search performance |
| ZIOX_UI_ENABLED               | true          | No            | default we enable emebed UI, you can disable it. |
| ZIOX_METRICS_DEDUP_ENABLED    | true          | No            | TODO |
| ZIOX_TRACING_ENABLED          | false         | No            | enable it to send traces to remote trace server. |
| OTEL_OTLP_HTTP_ENDPOINT       | -             | No            | remote trace server endpoint. |
| ZIOX_TRACING_HEADER_KEY       | Authorization | No            | remote trace server endpoint authentication header key. |
| ZIOX_TRACING_HEADER_VALUE     | -             | No            | remote trace server endpoint authentication header value. |
| ZIOX_MAX_FILE_SIZE_ON_DISK    | 10            | No            | max WAL file size before moving it to storage, default is 10MB, unit: MB |
| ZIOX_MAX_FILE_RETENTION_TIME  | 600           | No            | max WAL file retention ttl, default is 600s, unit: second |
| ZIOX_FILE_PUSH_INTERVAL       | 10            | No            | interval at which job moves files from WAL to storage, default 10s, unit: second |
| ZIOX_FILE_MOVE_THREAD_NUM     | -             | No            | number of threads for job to move WAL to storage, default equal to cpu_num. |
| ZIOX_QUERY_THREAD_NUM         | -             | No            | number of threads for searching in data files. |
| ZIOX_TS_ALLOWED_UPTO          | 5             | No            | just allow ingest `now - 5 hours` data. |
| ZIOX_METRICS_LEADER_PUSH_INTERVAL | -         | No            | TODO |
| ZIOX_METRICS_LEADER_ELECTION_INTERVAL | -     | No            | TODO |
| ZIOX_COMPACT_ENABLED          | true          | No            | enable compact for small files. |
| ZIOX_COMPACT_INTERVAL         | 600           | No            | interval at which job compacts small files into larger files. default is 600s, unit: second |
| ZIOX_COMPACT_MAX_FILE_SIZE    | 256           | No            | max file size for a single compacted file, after compaction all files will be below this value. default is 256MB, unit: MB |
| ZIOX_MEMORY_CACHE_ENABLED     | true          | No            | enable in-memory caching for files, default is true, the latest files are cached for accelerated queries. |
| ZIOX_MEMORY_CACHE_CACHE_LATEST_FILES | false  | No            | by default we just cache files required by data being queried, enable this option to cache all the latest generated files.Caching all latest generated files can accelerate the queries on latest data, the time range for latest cached files depends on the max cache size. |
| ZIOX_MEMORY_CACHE_MAX_SIZE    | -             | No            | default 50% of the total memory as used for in-memory cache , one can set it to desired amount unit: MB |
| ZIOX_MEMORY_CACHE_RELEASE_SIZE | -            | No            | default drop 1% entries from in-memory cache as cache is full, one can set it to desired amount unit: MB |
| RUST_LOG                      | info          | No            | log level, default is info, supports: error, warn, info, debug, trace |


> For local mode, we use sled db as the metadata store.
> For cluster mode, we use etcd as the metadata store. We plan to support redis, postgreSQL for cluster mode in future.

## Etcd

| Environment Variable          | Default Value | Mandatory     | Description                                                               |
| ----------------------------- | ------------- |-------------- | ------------------------------------------------------------------------- |
| ZIOX_ETCD_ADDR                | localhost:2379 | No           | default etcd endpoint |
| ZIOX_ETCD_PREFIX              | /zinc/oxide/  | No            | etcd keys prefix      |
| ZIOX_ETCD_CONNECT_TIMEOUT     | 2             | No            | endpoint connection timeout, unit: seconds |
| ZIOX_ETCD_COMMAND_TIMEOUT     | 5             | No            | command execute timeout, unit: seconds |
| ZIOX_ETCD_LOCK_WAIT_TIMEOUT   | 60            | No            | max ttl for a lock, the lock will report timeout above this limit. |
| ZIOX_ETCD_LOAD_PAGE_SIZE      | 10000         | No            | set/change this to detect pagenation size for loading data from etcd. |
| ZIOX_ETCD_USER                | -             | No            | authentication, username, refer: https://etcd.io/docs/v3.5/op-guide/authentication/rbac/ |
| ZIOX_ETCD_PASSWORD            | -             | No            | authentication, password |
| ZIOX_ETCD_CLIENT_CERT_AUTH    | false         | No            | authentication with TLS, default is disabled, refer: https://etcd.io/docs/v3.5/op-guide/security/ |
| ZIOX_ETCD_TRUSTED_CA_FILE     | -             | No            | authentication with TLS, ca file path |
| ZIOX_ETCD_CERT_FILE           | -             | No            | authentication with TLS, cert file path |
| ZIOX_ETCD_KEY_FILE            | -             | No            | authentication with TLS, key file path |
| ZIOX_ETCD_DOMAIN_NAME         | -             | No            | authentication with TLS, cert domain name, default is empty, we use the domain in the cert |


## sled db

| Environment Variable          | Default Value | Mandatory     | Description                                                               |
| ----------------------------- | ------------- |-------------- | ------------------------------------------------------------------------- |
| ZIOX_SLED_DATA_DIR            | ./data/db/    | No            | sled db data directory. |
| ZIOX_SLED_PREFIX              | /zinc/oxide/  | No            | sled db keys prefix . |


## S3

| Environment Variable          | Default Value | Mandatory     | Description                                                               |
| ----------------------------- | ------------- |-------------- | ------------------------------------------------------------------------- |
| ZIOX_S3_SERVER_URL            | -             | No            | default for aws s3 & leave it empty, but for `minIO`, `gcs` one should configure it. |
| ZIOX_S3_REGION_NAME           | -             | No            | region name |
| ZIOX_S3_ACCESS_KEY            | -             | No            | access key |
| ZIOX_S3_SECRET_KEY            | -             | No            | secret key |
| ZIOX_S3_BUCKET_NAME           | -             | No            | bucket name |
