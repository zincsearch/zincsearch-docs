# Update template

Analyze the text and generate tokens.

### Request

PUT /es/_index_template/:target

```json
{
  "name": "t2",
  "index_patterns": [
    "game*"
  ],
  "priority": "",
  "template": {
    "settings": {
      "analysis": {
        "analyzer": {
          "default": {
            "type": "standard"
          }
        }
      }
    },
    "mappings": {
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
  }
}
```

### Response

```json
{"message":"template t2 created"}
```

