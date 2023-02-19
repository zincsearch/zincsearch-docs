# Vector

( .toml format)

```toml
[sinks.zinc]
type = "http"
inputs = [ source or transform id ]
endpoint = "http://localhost:5080/api/{organization}/{stream}/_json"
auth.strategy = "basic"
auth.user = "hengfei.yang@gmail.com"
auth.password = "29ClqBTg7HS34861A5P0"
acknowledgements = null
compression = "none"
encoding.codec = "json"
encoding.timestamp_format = "rfc3339"
healthcheck.enabled = false
```
