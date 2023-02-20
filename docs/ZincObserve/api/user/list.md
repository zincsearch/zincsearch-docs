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
			"fist_name": "ming",
			"last_name": "xing",
			"role": "admin"
		}
	]
}
```

Description

| Field name | Data type | Default value | Description |
|------------|-----------|---------------|-------------|
| name       | string    | -             | user name |
| first_name | string    | -             | first name |
| last_name  | string    | -             | last name |
| role       | string    | -             | user role, supported: admin / user |
