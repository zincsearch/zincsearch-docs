# Search - Elasticsearch compatible


Create a document 

POST http://localhost:4080/api/article/_doc

```json
{
	"title": "Search for test",
	"content": "zinc now offers Elasticsearch compatible query DSL",
	"status": "published",
	"publish_date": "2020-12-12T18:18:18+08:00"
}
```

You can now search using below DSL

POST http://localhost:4080/es/article/_search

```json
{
  "query": { 
    "bool": { 
      "must": [
        { "match": { "title":   "Search"        }},
        { "match": { "content": "Elasticsearch" }}
      ],
      "filter": [ 
        { "term":  { "status": "published" }},
        { "range": { "publish_date": { "gte": "2015-01-01", "format": "2006-01-02" }}}
      ]
    }
  }
}
```
