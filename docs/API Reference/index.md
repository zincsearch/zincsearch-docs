# API Index

These APIs can be used to programatically interact with Zinc.

All APIs must have an authorization header. Authorization header can be created using base64 encoded values of user id and password. For the sake of simplicity it is HTTP basic authentication mechanism.



Header creation mechanism:

> Authorization: Basic base64("userId:password")

e.g. Header:

> Authorization: Basic YWRtaW46Q29tcGxleHBhc3MjMTIz

Make sure that you are sending the requests over HTTPS.

## API List

1. [CreateIndex](create-index)
1. [DeleteIndex](delete-index)
1. [ListIndexes](list-indexes)
1. [Search](search)
1. [UpdateDocumentWithId](update-document-with-id)
1. [UpdateDocument](update-document)
1. [DeleteDocument](delete-document)
1. [UpdateDocumentsBulk](update-documents-bulk)
1. [UpdateIndexMappings](update-index-mappings)
1. [GetIndexMappings](get-index-mappings)
1. [Version](version)
1. [Metrics](metrics)
1. [CreateUpdateUser](create-update-user)
1. [DeleteUser](delete-user)



