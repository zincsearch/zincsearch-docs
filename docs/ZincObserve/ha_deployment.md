# High Availability (HA) Deployment

While ZincObserve can be installed and run in HA mode on bare metal servers, VMs, Kubernetes and possibly other platforms, we currently provide installation using helm charts officially. We may provide additinal installers like terraform in future. Local disk storage is not supported in HA mode and as such configuring an object store is mandatory.

## Helm charts



For accessing the object store we recommend th best security practice of using IAM roles whereever possible. In case of Amaozn EKS you can use IAM roles for Service Accounts (IRSA).

You must download the [values.yaml](https://github.com/zinclabs/zincobserve-helm-chart/blob/main/values.yaml) file and make required changes. At a minimum you must provide the details of bucket to be used for data storage and credentials (IAM role or keys) to access it. You can download the file using following command:

```shell
curl https://raw.githubusercontent.com/zinclabs/zincobserve-helm-chart/main/values.yaml -o values.yaml
```

## Configuration

### Amazon EKS + S3

You must set a minimum of 2 values:

1. S3 bucket where data will be stored
    ```yaml
    config:
      ZO_S3_BUCKET_NAME: "mysuperduperbucket"
    ```
1. IAM role for the serviceAccount to gain AWS IAM credentials to access s3
    ```yaml
    serviceAccount:
      annotations:
        eks.amazonaws.com/role-arn: arn:aws:iam::12345353456:role/zo-s3-eks
    ```

Once you have configured the above in your values.yaml file, you can run the below commands to install ZicnObserve.

### Any Kubernetes + s3

Add/Modify following to values.yaml

1. S3 bucket where data will be stored
    ```yaml
    config:
      ZO_S3_BUCKET_NAME: "mysuperduperbucket"
      ZO_S3_ACCESS_KEY: "e.g.AKIAIOSFODNN7EXAMPLE"
      ZO_S3_SECRET_KEY: "e.g.wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
    ```

### Any Kubernetes + minio

Add/Modify following to values.yaml

1. S3 bucket where data will be stored
    ```yaml
    config:
      ZO_S3_SERVER_URL: "https://minio-server-url"
      ZO_S3_BUCKET_NAME: "mysuperduperbucket"
      ZO_S3_ACCESS_KEY: "e.g.AKIAIOSFODNN7EXAMPLE"
      ZO_S3_SECRET_KEY: "e.g.wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
    ```

### Any Kubernetes + GCS

Add/Modify following to values.yaml

1. S3 bucket where data will be stored
    ```yaml
    config:
      ZO_S3_SERVER_URL: "https://storage.googleapis.com"
      ZO_S3_BUCKET_NAME: "mysuperduperbucket"
      ZO_S3_ACCESS_KEY: "e.g.AKIAIOSFODNN7EXAMPLE"
      ZO_S3_SECRET_KEY: "e.g.wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
    ```

You can generate  keys for GC bucket using following steps:

1. Go to [Google cloud console > Cloud Storage > Settings > Interoperability](https://console.cloud.google.com/storage/settings;tab=interoperability) 
1. Make sure you are in the right project.
1. Access keys for your user account > Click "CREATE A KEY"

## Setup

### Installation

```shell
helm repo add zinc https://charts.zinc.dev
helm repo update

kubectl create ns zincobserve

helm --namespace zincobserve -f values.yaml install zo1 zinc/zincobserve
```

### Uninstallation

```shell
helm delete zo1
```



