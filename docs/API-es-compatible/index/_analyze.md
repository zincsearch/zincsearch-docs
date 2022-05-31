# _analyze

Analyze the text and generate tokens.

### Request

GET /es/_analyze

```json
{
  "analyzer" : "standard",
  "text" : "50 first dates"
}
```

### Response

```json
{
    "tokens": [
        {
            "end_offset": 2,
            "keyword": false,
            "position": 1,
            "start_offset": 0,
            "token": "50",
            "type": "Numeric"
        },
        {
            "end_offset": 8,
            "keyword": false,
            "position": 1,
            "start_offset": 3,
            "token": "first",
            "type": "AlphaNumeric"
        },
        {
            "end_offset": 14,
            "keyword": false,
            "position": 1,
            "start_offset": 9,
            "token": "dates",
            "type": "AlphaNumeric"
        }
    ]
}
```
