# Create index

#### Create a new index

Endpoint - POST /api/index

#### Update a exists index

Endpoint - PUT /api/index

> It will auto create a new index when you try to update a not exist index.

While you do not need to create indexes manually as they are created automatically when you start ingesting the data, you could create them in advance using this API.

## Request

e.g. 
POST http://localhost:4080/api/index

Request Body: 

```json
{
	"name": "article",
	"storage_type": "disk",
	"shard_num": 1,
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

## Use Shards

We added `shard_num` option when create index, if you not set this field, it has default value. Default shards num is `3`.

You can change the default value by environment `ZINC_SHARD_NUM`

You can set `shard_num` to `1` to keep it simply, if you don't have very much documents or performance issue.

### What is shards?

Shards is a solution to improve performance, it let us can concurrent writes and reads.

When create index we will set a shardsNum, default is 3.

When write documents, we will use docID do HASHING then distribute documents to different shard.

A shard is a real backend index, it will accept data and write to storage.

With shards, it also give us the ability to concurrently reads, as result we also improve query speed.

> We suggest set the `ZINC_SHARD_NUM` equal or less than your CPU cores. it will have better performance.
