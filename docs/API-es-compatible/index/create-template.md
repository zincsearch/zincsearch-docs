# Create update template

Create or update a template.

Create `POST /es/_index_template`

Update `PUT /es/_index_template/:target`

## Request

POST /es/_index_template

```json
{
  "name": "t2",
  "index_patterns": ["game-*"],
  "priority": 100,
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
        "content": {
          "type": "text",
          "index": true,
          "store": true,
          "sortable": false,
          "aggregatable": false,
          "highlightable": true
        }
      }
    }
  }
}
```

## Response

```json
{"message": "template t2 created"}
```
