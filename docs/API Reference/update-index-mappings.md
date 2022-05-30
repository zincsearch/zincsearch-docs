# UpdateIndexMappings
Create/Update an index mapping

Endpoint - PUT /api/:target/_mapping

## Request

e.g.

PUT http://localhost:4080/api/:target/_mapping

Request Body: 

```json
{
	"mappings": {
		"properties": {
			"name": {
				"type": "text"
			},
			"author": {
				"type": "keyword"
			},
			"price": {
				"type": "numeric"
			},
			"published": {
				"type": "bool"
			},
			"create_at": {
				"type": "time"
			}
		}
	}
}
```

mappings also can defines when create index.
