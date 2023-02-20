
There are 2 primary items that need to be stored in ZincObserve. 

1. Ingested stream data
1. Metadata of ingested stream data

Metadata for stream data is always stored on disk , however stream data can be stored on disk , s3 , minIO or gcs.

## Disk

Disk is default storage place for stream data , make sure you have enough storage available on your disk for stream data storage. During data ingestion the stream name that you provide may not be present, in that case a new folder for stream will be created automatically for storing the stream data.

## S3

To use S3 for storing stream data following needs to be done:

* Make AWS IAM credentials available to ZincObserve by any supported mechanisms. ZincObserve uses AWS SDK which looks for credentials through:

    - Environment variables AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY (Not recommended due to security concerns)
    - Your aws CLI credentials stored in ~/.aws/credentials
    - Instance metadata on an EC2 Instance/Fargate container/ECS container. You do this providing an IAM role to an EC2 instance or a task role to an ECS task - IMDS/IMDSv2 . ECS is not recommended as it does not have support for stateful workloads off EBS as of now.
    - IAM Roles for service Accounts in EKS


## MinIO

ZincObserve can use MinIO for storing stream data , following environment variables needs to be setup:


| Environment Variable          | Default Value | Mandatory     | Description                                                               |
| ----------------------------- | ------------- |-------------- | ------------------------------------------------------------------------- |
| ZO_S3_SERVER_URL            | -             | No            | default for aws s3 & leave it empty, but for `minIO`, `gcs` one should configure it. |
| ZO_S3_REGION_NAME           | -             | No            | region name |
| ZO_S3_ACCESS_KEY            | -             | No            | access key |
| ZO_S3_SECRET_KEY            | -             | No            | secret key |
| ZO_S3_BUCKET_NAME           | -             | No            | bucket name |
                                         
## gcs

ZincObserve can use gcs for storing stream data , following environment variables needs to be setup:


| Environment Variable          | Default Value | Mandatory     | Description                                                               |
| ----------------------------- | ------------- |-------------- | ------------------------------------------------------------------------- |
| ZO_S3_SERVER_URL            | -             | No            | default for aws s3 & leave it empty, but for `minIO`, `gcs` one should configure it. |
| ZO_S3_REGION_NAME           | -             | No            | region name |
| ZO_S3_ACCESS_KEY            | -             | No            | access key |
| ZO_S3_SECRET_KEY            | -             | No            | secret key |
| ZO_S3_BUCKET_NAME           | -             | No            | bucket name |
