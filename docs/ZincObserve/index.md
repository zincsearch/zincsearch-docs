# Welcome to Zinc Observe

ZincObserve is a search engine built specifically for log search & analytics. One can use it to search & analyze terabytes of logs.

## Features:
1. Best in class GUI.
1. Single binary for installation & running. Binaries available under [releases](https://github.com/zinclabs/zinc/releases) for multiple platforms.
1. SQL for sophisticated queries, no need to learn yet another query language.
1. Embedded scripting functions for ingestion & query to aid advanced capabilities like enrichment, redaction, log reduction, compliance, etc.
1. Dynamic Schema
1. Out of the box authentication
1. Storage in local Disk, s3, MinIO, GCP
1. Vastly easier to operate
1. Seamless upgrades

## ZincObserve is a 10x better engine than elasticsearch / splunk.

1. Stop indexing to reduce compute cost used for indexing , as most indexed data is rarely used
1. Compress the data & store it in S3 as opposed to EBS volumes,resulting in reduced storage & ingestion costs by 30x-50x.
1. Caching recent/hot data (configurable)
1. Search using brute force & amortize compute cost across multiple customers.
1. Used rust to build highly efficient engine. 
1. Used stateless nodes in a cluster coordinated using etcd.


## Project Status:

ZincObserve is Generally available for logs now. 
