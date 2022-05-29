# API Index

These APIs can be used to programatically interact with ZincSearch.

All APIs must have an authorization header. Authorization header can be created using base64 encoded values of user id and password. For the sake of simplicity it is HTTP basic authentication mechanism.



Header creation mechanism:

> Authorization: Basic base64 userId:password")

e.g. Header:

> Authorization: Basic YWRtaW46Q29tcGxleHBhc3MjMTIz

Make sure that you are sending the requests over HTTPS.

## API List

1. GET [/es/](_info)
1. GET [/es/_license](_license)
1. GET [/es/_xpack](_xpack)
1. POST [/es/_search](_search)
1. POST [/es/_msearch](_msearch)
1. POST [/es/:target/_search](_search)
1. POST [/es/:target/_msearch](_msearch)
1. GET [/es/_index_template](list-template)
1. PUT [/es/_index_template/:target](update-template)
1. GET [/es/_index_template/:target](get-template)
1. HEAD [/es/_index_template/:target](get-template)
1. DELETE [/es/_index_template/:target](delete-template)
1. GET [/es/:target/_mapping](get-mapping.md)
1. PUT [/es/:target/_mapping](update-mapping)
1. GET [/es/:target/_settings](get-settings)
1. PUT [/es/:target/_settings](update-settings)
1. POST [/es/_analyze](_analyze)
1. POST [/es/:target/_analyze](_analyze)
1. POST [/es/_bulk](_bulk)
1. POST [/es/:target/_bulk](_bulk)
1. POST [/es/:target/_doc](_create)
1. PUT [/es/:target/_doc/:id](_create)
1. PUT [/es/:target/_create/:id](_create)
1. POST [/es/:target/_create/:id](_create)
1. POST [/es/:target/_update/:id](_create)
1. DELETE [/es/:target/_doc/:id](_delete)
