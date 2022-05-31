# Create/Update Mapping



### Request

PUT /es/:target/_mapping

```json
{
  "properties": {
    "@timestamp": {
      "type": "time",
      "index": true,
      "store": false,
      "sortable": true,
      "aggregatable": true,
      "highlightable": false
    },
    "Athlete": {
      "type": "text",
      "index": true,
      "store": false,
      "sortable": false,
      "aggregatable": false,
      "highlightable": false
    },
    "City": {
      "type": "text",
      "index": true,
      "store": false,
      "sortable": false,
      "aggregatable": false,
      "highlightable": false
    },
    "Country": {
      "type": "text",
      "index": true,
      "store": false,
      "sortable": false,
      "aggregatable": false,
      "highlightable": false
    },
    "Discipline": {
      "type": "text",
      "index": true,
      "store": false,
      "sortable": false,
      "aggregatable": false,
      "highlightable": false
    },
    "Event": {
      "type": "text",
      "index": true,
      "store": false,
      "sortable": false,
      "aggregatable": false,
      "highlightable": false
    },
    "Gender": {
      "type": "text",
      "index": true,
      "store": false,
      "sortable": false,
      "aggregatable": false,
      "highlightable": false
    },
    "Medal": {
      "type": "text",
      "index": true,
      "store": false,
      "sortable": false,
      "aggregatable": false,
      "highlightable": false
    },
    "Season": {
      "type": "text",
      "index": true,
      "store": false,
      "sortable": false,
      "aggregatable": false,
      "highlightable": false
    },
    "Sport": {
      "type": "text",
      "index": true,
      "store": false,
      "sortable": false,
      "aggregatable": false,
      "highlightable": false
    },
    "Year": {
      "type": "numeric",
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
    }
  }
}
```

### Response

```json
{
    "message": "ok"
}
```
