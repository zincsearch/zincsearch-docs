# Concepts

## Organizations
An organization is logical entity which groups various streams , users , functions in zinc observe. An organization can represent a enterprize , a department of an enterprize or an application. All streams , users , functions etc are scoped to an organization.

## Streams
A stream in zinc observe is sequence of events(logs/metrics/traces) that share the same source for eg: logs from a specific application or logs from an enterprize.

## Data Ingestion
TBD

### Data Partitioning

## Logs
Log is a type of stream, which caters to log events from applications.

## Users
> Applicable to cloud version

Users are indiviuals using application by logging in with appropriate credentials. As of today we support google as social account for login. One can also sign up by providing valid email. 

### User Roles
A user in zinc observe can have role admin or member.

- Users with admin role have greater priviledges as compared to users with member role , for eg : inviting other users by email to an organization.

## Functions

Functions in zinc observe can used during ingestion & query to aid advanced capabilities like enrichment, redaction, log reduction, compliance, etc.A function is defined in lua script.

## Timestamp


## Searching
### Full text search

