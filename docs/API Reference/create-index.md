# CreateIndex

Create a new index

Endpoint - PUT [/api/index](/api/index)

While you do not need to create indexes manually as they are created automatically when you start ingesting the data, you could create them in advance using this API. S3 backed indexes must be created before they can be used.

## Request

e.g. 
PUT http://localhost:4080/api/index

Request Body: 
```json
{
	"name": "article",
	"storage_type": "s3",
	"mappings": {
		"properties": {
			"title": {
				"type": "text",
				"store": true,
				"sortable": false,
				"highlightable": true
			},
			"content": {
				"type": "text",
				"index": true,
				"store": true,
				"aggregatable": true,
				"highlightable": true
			},
			"status": {
				"type": "keyword",
				"index": true,
				"sortable": true,
				"aggregatable": true
			},
			"publish_date": {
				"type": "time",
				"format": "2006-01-02T15:04:05Z07:00",
				"index": true,
				"sortable": true,
				"aggregatable": true
			}
		}
	}
}
```

OR
```json
{
	"name": "article",
	"storage_type": "disk",
	"mappings": {
		"properties": {
			"title": {
				"type": "text",
				"store": true,
				"sortable": false,
				"highlightable": true
			},
			"content": {
				"type": "text",
				"index": true,
				"store": true,
				"aggregatable": true,
				"highlightable": true
			},
			"status": {
				"type": "keyword",
				"index": true,
				"sortable": true,
				"aggregatable": true
			},
			"publish_date": {
				"type": "time",
				"format": "2006-01-02T15:04:05Z07:00",
				"index": true,
				"sortable": true,
				"aggregatable": true
			}
		}
	}
}
```

OR
```json
{
	"name": "article",
	"storage_type": "minio",
	"mappings": {
		"properties": {
			"title": {
				"type": "text",
				"store": true,
				"sortable": false,
				"highlightable": true
			},
			"content": {
				"type": "text",
				"index": true,
				"store": true,
				"aggregatable": true,
				"highlightable": true
			},
			"status": {
				"type": "keyword",
				"index": true,
				"sortable": true,
				"aggregatable": true
			},
			"publish_date": {
				"type": "time",
				"format": "2006-01-02T15:04:05Z07:00",
				"index": true,
				"sortable": true,
				"aggregatable": true
			}
		}
	}
}
```

Default storage_type is disk
