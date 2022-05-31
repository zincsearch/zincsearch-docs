# Create/Update settings



### Request

PUT /es/:target/_settings

```json
{
  "analysis": {
    "analyzer": {
      "default": {
        "type": "standard"
      }
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
