# UpdateUser

Create a new index

Endpoint - PUT [/api/user](/api/user)

Create or update an new/existing user.

## Request

e.g. 
PUT http://localhost:4080/api/user

Request Body: 
```json
{ 
    "_id": "prabhat",
	"name": "Prabhat Sharma",
	"role": "admin", // or user
	"password": "Complexpass#123"
}
```


