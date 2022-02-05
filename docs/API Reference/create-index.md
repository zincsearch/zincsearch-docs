# CreateIndex

Create a new index

Endpoint - PUT [/api/index](/api/index)

While you do not need to create indexes manually as they are created automatically when you start ingesting the data, you could create them in advance using this API. S3 backed indexes must be created before they can be used.

## Request

e.g. 
PUT http://localhost:4080/api/index

Request Body: 
```json
{ 
    "name": "myshinynewindex", 
    "storage_type": "s3" 
}
```

OR
```json
{ 
    "name": "myshinynewindex", 
    "storage_type": "disk" 
}
```

OR
```json
{ 
    "name": "myshinynewindex", 
    "storage_type": "minio" 
}
```

Default storage_type is disk
