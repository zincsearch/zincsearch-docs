## curl

### Single record

```shell
curl \
  -u admin:Complexpass#123 \
  -XPUT \
  -d '[{"author":"Prabhat Sharma"}]' \
  http://localhost:5080/api/org1/stream1/_json
```

### Large number if records from a file

For the [sample file](ttps://zinc-public-data.s3.us-west-2.amazonaws.com/zinc-enl/sample-k8s-logs/k8slog_json.json.zip) . You can us ethe bewlo command.
```shell
curl http://localhost:5080/api/default/quickstart1/_json -i -u admin@example.com:Complexpass#123  --data-binary "@k8slog_json.json"
```
