

# Aggregation

Endpoint - POST /api/:target/_search

Search for documents with aggregations

e.g. 
POST http://localhost:4080/api/olympics/_search

Request Body: 
```json
{
    "search_type": "matchall",
    "query": {
        "term": "query condition",
    },
    "aggs": {
      "my-aggs-term": {
        "agg_type": "terms",
        "field": "name",
        "size": 10
      }
    }
}
```

aggregation can filter data with query.

aggregation support:

1. Bucketing
    1. Terms
    1. Numeric Range
    1. Date Range
1. Metrics
    1. Min/Max/Count/Sum
    1. Avg/Weighted Avg




