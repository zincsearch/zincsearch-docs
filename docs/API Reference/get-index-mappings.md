# GetIndexMappings
Get mappings of all indexes

Endpoint - GET /api/:target/_mappings

This will delete the index and its associated metadata. Be careful using this as data is deleted unrecoverably.

## Request

e.g. 

GET http://localhost:4080/api/olympics/_mappings

## Response

```json
{
    "mappings": {
        "properties": {
            "Athlete": {
                "type": "text"
            },
            "City": {
                "type": "text"
            },
            "Country": {
                "type": "text"
            },
            "Discipline": {
                "type": "text"
            },
            "Event": {
                "type": "text"
            },
            "Gender": {
                "type": "text"
            },
            "Medal": {
                "type": "text"
            },
            "Season": {
                "type": "text"
            },
            "Sport": {
                "type": "text"
            },
            "Year": {
                "type": "numeric"
            }
        }
    }
}
```