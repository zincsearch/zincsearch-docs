# List indexes

List existing indexes

Endpoint - GET /api/index

Get the list of existing indexes

## Request

e.g. 
GET http://localhost:4080/api/index


## Response

```json
[
    {
        "name": "olympics",
        "storage_type": "disk",
        "settings": {},
        "mappings": {
            "properties": {
                "_id": {
                    "type": "keyword",
                    "index": true,
                    "store": false,
                    "sortable": true,
                    "aggregatable": true,
                    "highlightable": false
                },
                "@timestamp": {
                    "type": "date",
                    "index": true,
                    "store": false,
                    "sortable": true,
                    "aggregatable": true,
                    "highlightable": false
                },
                "Country": {
                    "type": "text",
                    "index": true,
                    "store": true,
                    "sortable": false,
                    "aggregatable": false,
                    "highlightable": true
                },
                "City": {
                    "type": "keyword",
                    "index": true,
                    "store": false,
                    "sortable": true,
                    "aggregatable": true,
                    "highlightable": false
                },
            }
        },
        "create_at": "0001-01-01T00:00:00Z",
        "update_at": "0001-01-01T00:00:00Z",
        "docs_count": 36935,
        "storage_size": 11301
    }
]
```
