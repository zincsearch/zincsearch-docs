# Ingestion - Bulk

Endpoint: `POST /api/{organization}/_bulk`

This will upload multiple records in batch with ndjson (newline delimited json).

## Request

```json
{ "index" : { "_index" : "olympics" } } 
{"Year": 1896, "City": "Athens", "Sport": "Aquatics", "Discipline": "Swimming", "Athlete": "Alfred", "Country": "HUN"}
{ "index" : { "_index" : "olympics" } } 
{"Year": 1896, "City": "Athens", "Sport": "Aquatics", "Discipline": "Swimming", "Athlete": "HERSCHMANN", "Country":"CHN"}
```

> First line is index action
>
> Second line is record data

### Request action

Create record

```json
{ "index" : { "_index" : "olympics" } } 
```

We only supported `create` action.

The `_index` is stream name what you want to use.

## Response

```json
{
	"code": 200,
	"status": [
		{
			"name": "olympics",
			"successful": 2,
			"failed": 0
		}
	]
}
```

Returns successful and failed count for each stream.

## Timestamp

Default we add an field `_timestamp` for each record with the value of `NOW` of microseconds. 

we support use two fields to override the default value.

- _timestamp
- @timestamp

the value support two data type format:

- microseconds
- string value
    - RFC 3339 and ISO 8601 date and time string such as `1996-12-19T16:39:57-08:00`
    - RFC 2822 date and time string such as `Tue, 1 Jul 2003 10:52:37 +0200`

eg:

use microseconds

```json
{ "index" : { "_index" : "olympics" } } 
{"Year": 1896, "City": "Athens", "Sport": "Aquatics", "_timestamp": "1674789786006000"}
```

use string datetime

```json
{ "index" : { "_index" : "olympics" } } 
{"Year": 1896, "City": "Athens", "Sport": "Aquatics", "_timestamp": "2023-01-02T10:01:01Z"}
```
