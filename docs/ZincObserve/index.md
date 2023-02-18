# ZincObserve: Introduction

‘ZincObserve’ is a cloud native observability platform that provides ~140x (YMMV. Could be higher or lower based on data entropy) lower storage costs (compared to Elasticsearch) for real life log data, significantly lower operational cost and ease of use. It can scale to petabytes of data, is highly performant and allows you to sleep better at night 😀. If you are looking for an observability tool for logs, metrics and traces do evaluate ZincObserve and how its approach towards observability could help you build better software, get more sleep and save money on observability costs.

## Features:
1. Best in class GUI.
1. Single binary for releases. Binaries available under [releases](https://github.com/zinclabs/zincobserve/releases) for multiple platforms.
1. Multitenancy
1. SQL for sophisticated queries, no need to learn yet another query language.
1. Embedded scripting functions for ingestion & query to aid advanced capabilities like enrichment, redaction, reduction, compliance, etc.
1. Dynamic Schema
1. Out of the box authentication
1. Storage in local Disk, s3, MinIO, GCS
1. Stateless nodes
1. Seamless upgrades

## Guiding principles

We want to build the best software in the observability category in the world, and we believe that the below principles will keep us aligned towards that:

1. Day 1: It should be easy to setup and use
    1. You should be able to install (for self hosted option) or sign up (for SaaS platform) in under 2 minutes.
    1. You should be able to start ingesting data in under 2 minutes and start observing the behavior of your applications without any major configuration.
2. Day 2: It should not be painful to keep the system up and running
    1. Application should be stable and in the case of issues should be able to heal itself automatically.
    1. Majority of the users should be able to start using the system efficiently with ZERO configuration.
    1. Scaling up/down should be as easy as changing the number of nodes in an autoscaling group (in AWS) or changing the number of replicas (in k8s).
    1. Majority of the folks should not need backups or should be able to do it without DBA level skills.
    1. Fear of upgrades should not make you lose your sleep
3. Features and Usability: It should have good features and functionality to do the job efficiently
    1. System should be highly usable from the get go - providing excellent ROI on the invested time. A great UI and API are important to achieve it.
    1. Logs themselves do not provide you visibility into your application. You need metrics and traces as well.
4. Cost: It should be cost effective
    1. You should not have to mortgage your house or company assets in order to run the system either in self hosted mode (with or without licensing cost) or for SaaS platform.
5. Learning curve: It should allow beginner to do a lot of tasks easily and advanced users should be able to use most of their existing skills
    1. A user who has never used the system should be able to set up and use the system efficiently for basic needs or should be able to use existing skills for advanced purposes.
6. Performance: It should be highly performant
    1. System should be highly performant for most of the use cases in the real world.
    1. Many a times performance requires a tradeoff. In situations of tradeoffs, it should be generally acceptable to the majority of the users for the use case with excellent tradeoff value in return.

## Project Status and roadmap

ZincObserve is currently in alpha. Following is the list of available features and roadmap.

| # | Feature                                                       | Status              |
|---|---------------------------------------------------------------|---------------------|
| 1 | Logs                                                          | Available           |
| 2 | Highly compressed storage of data                             | Available           |
| 3 | Support of S3, MinIO and GCS for data storage                 | Available           |
| 4 | Advanced GUI                                                  | Available           |
| 5 | SQL based query language                                      | Available           |
| 6 | User defined Ingest and Query functions (Lua based)           | Available           |
| 7 | Multi-tenancy                                                 | Available           |
| 8 | Ingestion API compatibility with Elasticsearch                | Available           |
| 9 | Scheduled Alerts (Based on logs)                              | Available           |
| 10 | Real time Alerts (Based on logs)                             | Available           |
| 11 | High Availability (HA) and clustering                        | Available           |
| 12 | Stateless nodes                                              | Available           |
| 13 | Localization for multiple languages                          | Available           |
| 14 | Prebuilt binaries for multiple platforms                     | Available           |
| 15 | Prebuilt container images for multiple platforms             | Available           |
| 16 | Prebuilt container images for with SIMD acceleration         | Available           |
| 17 | SIMD support for vectorized processing (AVX512 and Neon)     | Available           |
| 18 | Alerts (Based on metrics)                                    | To Start   | 
| 19 | Search and aggregation API compatibility with Elasticsearch  | Under development   |
| 20 | Dashboards                                                   | Under development   |
| 21 | Metrics                                                      | Under development   |
| 22 | Traces                                                       | Under development   |
| 23 | WASM based ingest and query functions                        | To Start            |

Please raise any new feature requests via github issue tracker.

You can use either the open source version or [Zinc Cloud](https://observe.zinc.dev). [Zinc Cloud](https://observe.zinc.dev) is built on top of open source ZincObserve but has minor differences. We will highlight the differences in the documentation whenever possible.

## How does ZincObserve compare to Elasticsearch

Elasticsearch is a general purpose search engine which can be used app search or log search. ZincObserve is built specifically for log search. If you are looking for a lightweight alternative of Elasticsearch then you should take a look at ZincSearch.

ZincObserve does not rely on indexing of the data. It stores unindexed data in compressed format in local disk or object store in parquet columnar format. This allows for much lower ingestion compute requirement and very high compression rates resulting in ~140x lower storge cost. No indexing of data means that full scan searches may be slower than Elasticsearch but should still be fast due to multiple other techniques used. [Uber found 80% of queries in their production environment to be aggregation queries](https://www.uber.com/en-IN/blog/logging/) and columnar data storage of ZincObserve means that aggregation queries will typically be much faster than Elasticsearch.

Below is the result when we sent real life log data from our kubernetes cluster to both Elasticsearch and ZincObserve.
![ZincObserve Vs Elasticsearch storage](./images/zo_vs_es.png)

ZincObserve is built in rust and enjoys its fast performance with no challaneges of JVM.

Statelss node architecture allows ZincObserve to scale horizontally without worrying about data replication.





