# _create

Create/Update a document and index it for searches

### Request

1. POST /es/:target/_doc
1. PUT /es/:target/_doc/:id
1. PUT /es/:target/_create/:id
1. POST /es/:target/_create/:id
1. POST /es/:target/_update/:id

```json
{ 
    "name": "Prabhat Sharma" 
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
