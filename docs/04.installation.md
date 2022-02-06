
# Installation

You would need FIRST_ADMIN_USER and FIRST_ADMIN_PASSWORD environment variables when you start zinc for the first time. You don't need them on subsequent runs of zinc.

### Windows 

Binaries can be downloaded from [releases](https://github.com/prabhatsharma/zinc/releases) page for appropriate platform.

```shell
set FIRST_ADMIN_USER=admin
set FIRST_ADMIN_PASSWORD=Complexpass#123
mkdir data
zinc.exe
```
### MacOS - Homebrew 

In your terminal:

```shell
brew tap prabhatsharma/tap
brew install prabhatsharma/tap/zinc
mkdir data
FIRST_ADMIN_USER=admin FIRST_ADMIN_PASSWORD=Complexpass#123 zinc 
```

Now point your browser to [http://localhost:4080](http://localhost:4080) and login

### MacOS/Linux Binaries
Binaries can be downloaded from [releases](https://github.com/prabhatsharma/zinc/releases) page for appropriate platform.

Create a data folder that will store the data

```shell
mkdir data
FIRST_ADMIN_USER=admin FIRST_ADMIN_PASSWORD=Complexpass#123 ./zinc 
```


Now point your browser to [http://localhost:4080](http://localhost:4080) and login

### Docker

------------------------


Docker images are available at [https://gallery.ecr.aws/prabhat/zinc](https://gallery.ecr.aws/prabhat/zinc)

```shell
mkdir data
docker run -v /full/path/of/data:/data -e DATA_PATH="/data" -p 4080:4080 \
    -e FIRST_ADMIN_USER=admin -e FIRST_ADMIN_PASSWORD=Complexpass#123 \
    --name zinc public.ecr.aws/prabhat/zinc:latest
```


Now point your browser to [http://localhost:4080](http://localhost:4080) and login

**Optional - Only if you have AWS CLI installed.**

If you have AWS CLI installed and get login error then run below command:

```shell
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws
```


### Kubernetes

#### Manual Install

Create the namespace, deploy and port forward:

```shell
kubectl create ns zinc
kubectl apply -f k8s/kube-deployment.yaml
kubectl -n zinc port-forward svc/z 4080:4080
```

Now point your browser to [http://localhost:4080](http://localhost:4080) and login

#### Helm

Update Helm values located in [values.yaml](helm/zinc/values.yaml)

Create the namespace:
```shell
kubectl create ns zinc
```

Install the chart:
```shell
helm install zinc helm/zinc -n zinc
```

Zinc can be made available with an ingress or port-forward:
```shell
kubectl -n zinc port-forward svc/zinc 4080:4080
```

Now point your browser to [http://localhost:4080](http://localhost:4080) and login

