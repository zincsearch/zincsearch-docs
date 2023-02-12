# List users

Endpoint: `GET /api/{organization}/users`

## Request

None

## Response

```json
{
	"list": [
		{
			"name": "newuser",
			"role": "admin"
		}
	]
}
```

Description

| Field name | Data type | Default value | Description |
|------------|-----------|---------------|-------------|
| name       | string    | -             | user name |
| role       | string    | -             | user role, supported: admin / user |
