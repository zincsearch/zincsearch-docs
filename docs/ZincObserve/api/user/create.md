# Create or update user

Endpoint: `POST /api/{organization}/user`

## Request

```json
{
	"name": "newuser",
	"password": "complex#pass",
	"role": "admin"
}
```

Description

| Field name | Data type | Default value | Description |
|------------|-----------|---------------|-------------|
| name       | string    | -             | user name |
| password   | string    | -             | user password |
| role       | string    | -             | user role, supported: admin / user |

## Response

```json
{
	"code": 200,
	"message": "User saved successfully"
}
```
