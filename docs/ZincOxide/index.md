# Index

ZincOxide is a saearch engine built specifically for log search and analytics. You can use it to search and analyze terabytes of logs. Some of the features of ZincOxide are:


```json
{
    "query": {
        "sql": "select * from fluent-bit where match_all('nginx') and \"kubernetes.namespace_name\"='ingress-nginx'",
        "from": 0,
        "size": 100
    },
    "aggs": {
        "histogram": "select date_bin(INTERVAL '1 hour', to_timestamp_micros(\"_timestamp\"), to_timestamp('2001-01-01T00:00:00')) AS key, count(*) AS num from query GROUP BY key ORDER BY key limit 10",
        "namespace": "select \"kubernetes.host\" as host, count(\"kubernetes.host\") as log_entries_count from query group by host limit 10"
    }
}
```

1. 

