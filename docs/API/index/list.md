# List indexes

List existing indexes

Endpoint - GET /api/index

Get the list of existing indexes

## Request

e.g. 
GET http://localhost:4080/api/index?page_num=1&page_size=20&sort_by=name&desc=false&name=f

### 请求参数

| Param     | Position    | Type    | Required | Explain                                     |
|-----------|-------------|---------|----------|---------------------------------------------|
| page_num  | query       | integer | false    | page num from 1                             |
| page_size | query       | integer | false    | if page size is empty or 0, then return all |
| sort_by   | query       | string  | false    | sort field, like "name"                     |
| desc      | query       | string  | false    | Sort in descending order                    |
| name      | query       | string  | false    | Fuzzy query by name                         |


## Response

```json
{
  "list": [
    {
      "name": "fluent.warn-20220803",
      "storage_type": "disk",
      "settings": {},
      "mappings": {
        "properties": {
          "@log_name": {
            "type": "text",
            "index": true,
            "store": false,
            "sortable": false,
            "aggregatable": false,
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
          "_id": {
            "type": "keyword",
            "index": true,
            "store": false,
            "sortable": true,
            "aggregatable": true,
            "highlightable": false
          },
          "chunk": {
            "type": "text",
            "index": true,
            "store": false,
            "sortable": false,
            "aggregatable": false,
            "highlightable": false
          },
          "chunk_id": {
            "type": "text",
            "index": true,
            "store": false,
            "sortable": false,
            "aggregatable": false,
            "highlightable": false
          },
          "error": {
            "type": "text",
            "index": true,
            "store": false,
            "sortable": false,
            "aggregatable": false,
            "highlightable": false
          },
          "message": {
            "type": "text",
            "index": true,
            "store": false,
            "sortable": false,
            "aggregatable": false,
            "highlightable": false
          },
          "next_retry_time": {
            "type": "text",
            "index": true,
            "store": false,
            "sortable": false,
            "aggregatable": false,
            "highlightable": false
          },
          "retry_times": {
            "type": "numeric",
            "index": true,
            "store": false,
            "sortable": true,
            "aggregatable": true,
            "highlightable": false
          }
        }
      },
      "shard_num": 3,
      "shards": {
        "1QQO6hBnSOk": {
          "id": "1QQO6hBnSOk",
          "node_id": "",
          "shard_num": 1,
          "shards": [
            {
              "id": 0,
              "stats": {
                "doc_time_min": 1659518099160961024,
                "doc_time_max": 1659518114106690560,
                "doc_num": 3,
                "storage_size": 23672,
                "wal_size": 0
              }
            }
          ],
          "stats": {
            "doc_time_min": 1659518099160961024,
            "doc_time_max": 1659518114106690560,
            "doc_num": 3,
            "storage_size": 23672,
            "wal_size": 0
          }
        },
        "1QQO6hBnTSo": {
          "id": "1QQO6hBnTSo",
          "node_id": "",
          "shard_num": 1,
          "shards": [
            {
              "id": 0,
              "stats": {
                "doc_time_min": 1659518100172261888,
                "doc_time_max": 1659518161360404480,
                "doc_num": 3,
                "storage_size": 22431,
                "wal_size": 0
              }
            }
          ],
          "stats": {
            "doc_time_min": 1659518100172261888,
            "doc_time_max": 1659518161360404480,
            "doc_num": 3,
            "storage_size": 22431,
            "wal_size": 0
          }
        },
        "1QQO6hBnUWs": {
          "id": "1QQO6hBnUWs",
          "node_id": "",
          "shard_num": 1,
          "shards": [
            {
              "id": 0,
              "stats": {
                "doc_time_min": 1659518101951646208,
                "doc_time_max": 1659518101951646208,
                "doc_num": 1,
                "storage_size": 15411,
                "wal_size": 0
              }
            }
          ],
          "stats": {
            "doc_time_min": 1659518101951646208,
            "doc_time_max": 1659518101951646208,
            "doc_num": 1,
            "storage_size": 15411,
            "wal_size": 0
          }
        }
      },
      "stats": {
        "doc_time_min": 0,
        "doc_time_max": 0,
        "doc_num": 7,
        "storage_size": 61514,
        "wal_size": 0
      },
      "version": ""
    }
  ],
  "page": {
    "page_num": 1,
    "page_size": 20,
    "total": 1
  }
}

```

## GET List index Name

GET /api/index_name

e.g.
GET http://localhost:4080/api/index_name?name=f

### 请求参数

| Param | Position | Type   | Required | Explain             |
|-------|----------|--------|----------|---------------------|
| name  | query    | string | false    | Fuzzy query by name |


## Response

```json
[
  "fluent.info-20220802",
  "fluent.info-20220803",
  "fluent.warn-20220803"
]
```
