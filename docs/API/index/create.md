# Create index

Create a new index

Endpoint - POST /api/index

While you do not need to create indexes manually as they are created automatically when you start ingesting the data, you could create them in advance using this API. S3 backed indexes must be created before they can be used.

## Request

e.g. 
POST http://localhost:4080/api/index

Request Body: 

```json
{
	"name": "article",
	"storage_type": "disk",
	"mappings": {
		"properties": {
			"title": {
				"type": "text",
				"index": true,
				"store": true,
				"highlightable": true
			},
			"content": {
				"type": "text",
				"index": true,
				"store": true,
				"highlightable": true
			},
			"status": {
				"type": "keyword",
				"index": true,
				"sortable": true,
				"aggregatable": true
			},
			"publish_date": {
				"type": "date",
				"format": "2006-01-02T15:04:05Z07:00",
				"index": true,
				"sortable": true,
				"aggregatable": true
			}
		}
	}
}
```

OR use `s3` to storage data:

```json
{
	"name": "article",
	"storage_type": "s3",
	"mappings": {
		"properties": {
			"title": {
				"type": "text",
				"index": true,
				"store": true,
				"highlightable": true
			},
			"content": {
				"type": "text",
				"index": true,
				"store": true,
				"highlightable": true
			},
			"status": {
				"type": "keyword",
				"index": true,
				"sortable": true,
				"aggregatable": true
			},
			"publish_date": {
				"type": "date",
				"format": "2006-01-02T15:04:05Z07:00",
				"index": true,
				"sortable": true,
				"aggregatable": true
			}
		}
	}
}
```

OR use `minIO` to storage data:

```json
{
	"name": "article",
	"storage_type": "minio",
	"mappings": {
		"properties": {
			"title": {
				"type": "text",
				"index": true,
				"store": true,
				"highlightable": true
			},
			"content": {
				"type": "text",
				"index": true,
				"store": true,
				"highlightable": true
			},
			"status": {
				"type": "keyword",
				"index": true,
				"sortable": true,
				"aggregatable": true
			},
			"publish_date": {
				"type": "date",
				"format": "2006-01-02T15:04:05Z07:00",
				"index": true,
				"sortable": true,
				"aggregatable": true
			}
		}
	}
}
```

Default `storage_type` is `disk`

## Use S3

When create index you can set `storage_type` to `s3` to enable s3 storage.

Before use s3, you should config aws first.

1. Config your ~/.aws/credentials 
2. set `ZINC_S3_BUCKET` environment for zinc


## Use MinIO

When create index you can set `storage_type` to `minio` to enable minIO storage.

You can set the environments to config minIO.

| Environment Variable          | Default Value | Mandatory     | Description                                                               |
| ----------------------------- | ------------- |-------------- | ------------------------------------------------------------------------- |
| ZINC_MINIO_ENDPOINT           | None          | No            | MinIO server endpoint. e.g localhost:9000 . See no http                   |
| ZINC_MINIO_ACCESS_KEY_ID      | None          | No            | MinIO ACCESS_KEY_ID                                                       |
| ZINC_MINIO_SECRET_ACCESS_KEY  | None          | No            | MinIO SECRET_ACCESS_KEY                                                   |
| ZINC_MINIO_BUCKET             | None          | No            | MinIO bucket for index storage                                            |
