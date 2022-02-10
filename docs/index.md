# Welcome to Zinc search

Note: Zinc and all its APIs are considered to be alpha stage at this time. Expect breaking changes in API contracts and data format at this stage.

Zinc was first released on Dec 3rd, 2021.

## Why zinc

Zinc was started since there was no search engine that was available that could serve my needs.

While Elasticsearch is a very good product, it is complex and requires lots of resources and is more than a decade old. I built Zinc so it becomes easier for folks to use full text search indexing without doing a lot of work.

You may also want to read the initial blog regarding launch of [Zinc](https://prabhatsharma.in/blog/in-search-of-a-search-engine-beyond-elasticsearch-introducing-zinc/)


## Features:
1. Provides full text indexing capability
1. Single binary for installation and running. Binaries available under [releases](https://github.com/prabhatsharma/zinc/releases) for multiple platforms.
1. Embedded Web UI for querying data written in Vue
1. Compatibility with Elasticsearch APIs for ingestion of data (single record and bulk API)
1. Out of the box authentication
1. Schema less - No need to define schema upfront and different documents in the same index can have different fields.
1. Index storage in s3 and MinIO (experimental)
1. Aggregation support