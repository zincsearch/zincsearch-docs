
We prefer environment variables for configuration as opposed to configuration files or command line options as its easier to provide environment variables in a containerized environment as well as local setup.


| Environment Variable          | Default Value | Mandatory     | Description                                                               |
| ----------------------------- | ------------- |-------------- | ------------------------------------------------------------------------- |
| ZINC_FIRST_ADMIN_USER         | -             | On first run  | First admin user of ZincSearch. Not required after first run of ZincSearch.  |
| ZINC_FIRST_ADMIN_PASSWORD     | -             | On first run  | Password for first admin user                                             |
| ZINC_SERVER_PORT              | 4080          | No            | zinc server listen http port                                              |
| GIN_MODE                      | -             | No            | if the value is release then gin will run in production mode.             |
| ZINC_DATA_PATH                | ./data        | No            | Defaults to "data" folder in current working directory if not provided.   |
| ZINC_ICE_COMPRESSOR           | s2            | No            | Algorithm of compress segment file, default is: s2, supports: snappy, s2, zstd |
| ZINC_S3_BUCKET                | -             | No            | S3 bucket to be used for index storage                                    |
| ZINC_MINIO_ENDPOINT           | -             | No            | MinIO server endpoint. e.g localhost:9000 . See no http                   |
| ZINC_MINIO_ACCESS_KEY_ID      | -             | No            | MinIO ACCESS_KEY_ID                                                       |
| ZINC_MINIO_SECRET_ACCESS_KEY  | -             | No            | MinIO SECRET_ACCESS_KEY                                                   |
| ZINC_MINIO_BUCKET             | -             | No            | MinIO bucket for index storage                                            |
| ZINC_MAX_RESULTS              | 100           | No            | Maximum results to be returned from server. Defaults to 1000              |
| ZINC_BATCH_SIZE               | 1024          | No            | Internal batch size for batching records when bulk indexing is done.      |
| ZINC_AGGREGATION_TERMS_SIZE   | 1000          | No            | terms aggregation returns max bucket size                                 |
| ZINC_SHARD_MAX_SIZE           | 1073741824    | No            | We use multiple backend indexes for one big index, limit one shard size default is 1GB |
| ZINC_TELEMETRY                | true          | No            | Send anonymous telemetry info for improving ZincSearch. enabled or disabled.  |
| ZINC_SENTRY                   | true          | No            | Send anonymous error reports for debugging                                |
| ZINC_SENTRY_DSN               | -             | No            | Entry DNS, default is: https://15b6d9b8be824b44896f32b0234c32b7@o1218932.ingest.sentry.io/6360942 |
| ZINC_PROMETHEUS_ENABLE        | false         | No            | Enables prometheus metrics on /metrics endpoint                           |
| ZINC_PLUGIN_ES_VERSION        | -             | No            | es version, for compatible elasticsearch                                  |
| ZINC_PLUGIN_GSE_ENABLE        | false         | No            | plugin, GSE support Chinese analysis                                      |
| ZINC_PLUGIN_GSE_DICT_EMBED    | small         | No            | plugin, GSE which size dict need to load, `small` or `big`                |
| ZINC_PLUGIN_GSE_DICT_PATH     | ./plugins/gse/dict     | No   | plugin, GSE where to load user custom dictionary                          |
| ZINC_PROFILER                 | false         | No            | Default is false, we use pyroscope server to profiling                    |
| ZINC_PROFILER_SERVER          | -             | No            | default pyroscope server is: https://pyroscope.dev.zincsearch.com         |
| ZINC_PROFILER_API_KEY         | -             | No            | pyroscope server api key                                                  |
| ZINC_PROFILER_FRIENDLY_PROFILE_ID | -         | No            | pyroscope identifier id, example: zinc-alex                               |
