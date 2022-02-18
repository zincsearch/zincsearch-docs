
We prefer environment variables for configuration as opposed to configuration files or command line options as its easier to provide environment variables in a containerized environment as well as local setup.


| Environment Variable          | Default Value | Mandatory     | Description                                                               |
| :---------------------------- | ------------- |-------------- | :------------------------------------------------------------------------ |
| ZINC_FIRST_ADMIN_USER         | None          | On first run  | First admin user of zinc. Not required after first run of zinc.           |
| ZINC_FIRST_ADMIN_PASSWORD     | None          | On first run  | Password for first admin user                                             |
| ZINC_PROMETHEUS_ENABLE        | false         | No            | Enables prometheus metrics on /metrics endpoint                           |
| ZINC_DATA_PATH                | ./data        | No            | Defaults to "data" folder in current working directory if not provided.   |
| ZINC_S3_BUCKET                | None          | No            | S3 bucket to be used for index storage                                    |
| ZINC_MINIO_ENDPOINT           | None          | No            | MinIO server endpoint. e.g localhost:9000 . See no http                   |
| ZINC_MINIO_ACCESS_KEY_ID      | None          | No            | MinIO ACCESS_KEY_ID                                                       |
| ZINC_MINIO_SECRET_ACCESS_KEY  | None          | No            | MinIO SECRET_ACCESS_KEY                                                   |
| ZINC_MINIO_BUCKET             | None          | No            | MinIO bucket for index storage                                            |
| ZINC_MAX_RESULTS              | 100           | No            | Maximum results to be returned from server. Defaults to 1000              |
| ZINC_BATCH_SIZE               | 1000          | No            | Internal batch size for batching records when bulk indexing is done.      |
| GIN_MODE                      | None          | No            | if the value is release then gin will run in production mode.             |
| ZINC_TELEMETRY                | enabled       | No            | Send anonymous telemetry info for improving Zinc. enabled or disabled     |




