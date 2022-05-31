# Get Template

Analyze the text and generate tokens.

### Request

GET /es/_index_template


### Response

```json
[
  {
    "name": "t1",
    "@timestamp": "2022-05-27T23:42:42.232675087Z",
    "index_template": {
      "index_patterns": [
        "game*"
      ],
      "priority": 0,
      "template": {
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
  }
]
```
