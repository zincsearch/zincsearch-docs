
We prefer environment variables for configuration as opposed to configuration files or command line options as its easier to provide environment variables in a containerized environment as well as local setup.


| Environment Variable          | Mandatory     | Description                                                               |
| :---------------------------- | ------------- | :------------------------------------------------------------------------ |
| FIRST_ADMIN_USER              | On first run  | First admin user of zinc. Not required after first run of zinc.           |
| FIRST_ADMIN_PASSWORD          | On first run  | Password for first admin user                                             |
| ZINC_PROMETHEUS_ENABLE        | No            | Enables prometheus metrics on /metrics endpoint                           |
| DATA_PATH                     | No            | Defaults to "data" folder in current working directory if not provided.   |
| S3_BUCKET                     | No            | S3 bucket to be used for index storage                                    |
| ZINC_MINIO_ENDPOINT           | No            | MinIO server endpoint. e.g localhost:9000 . See no http                   |
| ZINC_MINIO_ACCESS_KEY_ID      | No            | MinIO ACCESS_KEY_ID                                                       |
| ZINC_MINIO_SECRET_ACCESS_KEY  | No            | MinIO SECRET_ACCESS_KEY                                                   |
| ZINC_MINIO_BUCKET             | No            | MinIO bucket for index storage                                            |
| MAX_RESULTS                   | No            | Maximum results to be returned from server. Defaults to 1000              |




