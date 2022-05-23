# Release Notes

## v0.1.7 Feb 18th 2022

Following are in this rleaese

1. Elasticsearch compatible query DSL. This will allow existing applications that use elasticsearch query DSL to start using ZincSearch without modification. It supports most of the query DSL, but not everything. Detailed docs on this to come soon.
1. Filebeat support - ZincSearch now supports filebeat as a source for log data. check docs at [https://docs.zinclabs.io/ingestion/filebeat/](https://docs.zinclabs.io/ingestion/filebeat/)
1. Reverse Proxy subpath - ZincSearch can now be deployed behind a reverse proxy at a subpath.
1. Weighted average support in aggregations
1. All environment variables have been renamed to start with ZINC_ .e..g. FIRST_ADMIN_USER has been renamed to ZINC_FIRST_ADMIN_USER
1. Added anonymous telemetry support to understand how ZincSearch is being used. Read more at [https://docs.zinclabs.io/telemetry/](https://docs.zinclabs.io/telemetry/)
1. Performance improvement for APIs requests. Each API call is now faster by 30-60 ms
1. There is BREAKING CHANGE for users who are upgrading from previous versions of ZincSearch. You would face authentication failure while logging in to ZincSearch . The way to fix to would be to delete data/_users folder and restart ZincSearch with new environment variables ZINC_FIRST_ADMIN_USER and ZINC_FIRST_ADMIN_PASSWORD


