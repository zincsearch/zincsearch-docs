# ZincObserve: Introduction

‘ZincObserve’ is a cloud native observability platform that provides ~140x (YMMV. Could be higher or lower based on data entropy) lower storage costs (compared to elasticsearch) for real life log data, significantly lower operational cost and ease of use. It can scale to petabytes of data, is highly performant and allows you to sleep better at night 😀. If you are looking for an observability tool for logs, metrics and traces do evaluate ZincObserve and how its approach towards observability could help you build better software, get more sleep and save money on observability costs.

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

## ZincObserve is a 10x better engine than elasticsearch / splunk.

1. Stop indexing to reduce compute cost used for indexing , as most indexed data is rarely used
1. Compress the data & store it in S3 as opposed to EBS volumes,resulting in reduced storage & ingestion costs by 30x-50x.
1. Caching recent/hot data (configurable)
1. Search using brute force & amortize compute cost across multiple customers.
1. Used rust to build highly efficient engine. 
1. Used stateless nodes in a cluster coordinated using etcd.


## Project Status:

ZincObserve is Generally available for logs now. 
