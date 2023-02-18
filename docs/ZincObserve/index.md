# ZincObserve: Introduction

‘ZincObserve’ is a cloud native observability platform (Logs, Metrics, Traces) that provides ~140x (YMMV. Could be higher or lower based on data entropy) lower storage costs (compared to Elasticsearch) for real life log data, significantly lower operational cost and ease of use. It can scale to petabytes of data, is highly performant and allows you to sleep better at night 😀. If you are looking for an observability tool for logs, metrics and traces do evaluate ZincObserve and how its approach towards observability could help you build better software, save money on observability costs, and sleep better.


## Project Status, Features and Roadmap

ZincObserve is currently in alpha. Following is the list of available features and roadmap.

| # | Feature                                                       | Status              |
|---|---------------------------------------------------------------|---------------------|
| 1 | Log search                                                    | Available           |
| 2 | Highly compressed storage of data                             | Available           |
| 3 | Dynamic evoolution of schema                                  | Available           |
| 4 | Out of the box authentication                                 | Available           |
| 5 | Support of S3, MinIO and GCS for data storage                 | Available           |
| 6 | Advanced GUI                                                  | Available           |
| 7 | SQL based query language                                      | Available           |
| 8 | User defined Ingest and Query functions (Lua based)           | Available           |
| 9 | Multi-tenancy                                                 | Available           |
| 10 | Ingestion API compatibility with Elasticsearch               | Available           |
| 11 | Scheduled Alerts (Based on logs)                             | Available           |
| 12 | Real time Alerts (Based on logs)                             | Available           |
| 13 | High Availability (HA) and clustering                        | Available           |
| 14 | Stateless nodes                                              | Available           |
| 15 | Localization for multiple languages                          | Available           |
| 16 | Prebuilt binaries for multiple platforms                     | Available           |
| 17 | Prebuilt container images for multiple platforms             | Available           |
| 18 | Prebuilt container images for with SIMD acceleration         | Available           |
| 19 | SIMD support for vectorized processing (AVX512 and Neon)     | Available           |
| 20 | Allows to sleep better at night                              | Available           |
| 21 | Search and aggregation API compatibility with Elasticsearch  | Under development   |
| 22 | Dashboards                                                   | Under development   |
| 23 | Metrics                                                      | Under development   |
| 24 | Traces                                                       | Under development   |
| 25 | WASM based ingest and query functions                        | To Start            |
| 26 | Alerts (Based on metrics)                                    | To Start            |


Please raise any new feature requests via github issue tracker.

You can use either the open source version or [Zinc Cloud](https://observe.zinc.dev). [Zinc Cloud](https://observe.zinc.dev) is built on top of open source ZincObserve but has minor differences. We will highlight the differences in the documentation whenever possible.

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


## How does ZincObserve compare to Elasticsearch

Elasticsearch is a general purpose search engine which can be used app search or log search. ZincObserve is built specifically for log search. If you are looking for a lightweight alternative of Elasticsearch then you should take a look at ZincSearch.

ZincObserve does not rely on indexing of the data. It stores unindexed data in compressed format in local disk or object store in parquet columnar format. This allows for much lower compute requirement during data ingestion and very high compression rates resulting in ~140x lower storge cost. No indexing of data means that full scan searches may be slower than Elasticsearch but should still be fast due to multiple other techniques used. [Uber found 80% of queries in their production environment to be aggregation queries](https://www.uber.com/en-IN/blog/logging/) and columnar data storage of ZincObserve means that aggregation queries will typically be much faster than Elasticsearch.

Below is the result when we sent real life log data from our kubernetes cluster to both Elasticsearch and ZincObserve. This only pertains to storage.
![ZincObserve Vs Elasticsearch storage](./images/zo_vs_es.png)

ZincObserve is built in rust and enjoys its fast performance with no challaneges of JVM.

Statelss node architecture allows ZincObserve to scale horizontally without worrying about data replication or corruption challenges.

ZincObserve does not have any index mapping or challenges associated with it.

You will typically see much lower operational effort and cost in managing ZincObserve clusters compared to Elasticsearch.

Embedded GUI of ZincObserve frees you from setting one more component (kibana) in your architecture.






