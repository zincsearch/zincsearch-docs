# Quickstart

We will do 2 things as part of the quickstart:

1. Install ZincObserve
1. Load sample data and perform search operations on it.

## Installation

You would need ZO_ROOT_USER_EMAIL and ZO_ROOT_USER_PASSWORD environment variables when you start ZincObserve for the first time. You don't need them on subsequent runs of ZincObserve.



=== "Windows" 

    Binaries can be downloaded from [releases](https://github.com/zinclabs/zincobserve/releases) page for appropriate platform.


        set ZO_ROOT_USER_EMAIL=admin@example.com
        set ZO_ROOT_USER_PASSWORD=Complexpass#123
        mkdir data
        zincobserve.exe


    Now point your browser to [http://localhost:5080](http://localhost:5080) and login

=== "MacOS - Homebrew"

    In your terminal:

        brew tap zinclabs/tap
        brew install zinclabs/tap/zinc
        mkdir data
        ZO_ROOT_USER_EMAIL=admin@example.com ZO_ROOT_USER_PASSWORD=Complexpass#123 zincobserve 

    Now point your browser to [http://localhost:5080](http://localhost:5080) and login

=== "MacOS/Linux Binaries"
    Binaries can be downloaded from [releases](https://github.com/zinclabs/zincobserve/releases) page for appropriate platform.

    Create a data folder that will store the data

        mkdir data
        ZO_ROOT_USER_EMAIL=admin@example.com ZO_ROOT_USER_PASSWORD=Complexpass#123 ./zincobserve


    Now point your browser to [http://localhost:5080](http://localhost:5080) and login

=== "Docker"

    ------------------------


    Docker images are available at [https://gallery.ecr.aws/zinclabs/zincobserve](https://gallery.ecr.aws/zinclabs/zincobserve)

        mkdir data
        docker run -v /full/path/of/data:/data -e ZO_DATA_DIR="/data" -p 5080:5080 \
            -e ZO_ROOT_USER_EMAIL=admin@example.com -e ZO_ROOT_USER_PASSWORD=Complexpass#123 \
            --name zinc public.ecr.aws/zinclabs/zincobserve:latest


    Now point your browser to [http://localhost:5080](http://localhost:5080) and login

    **Error pulling image if you have AWS CLI installed?**

    If you have AWS CLI installed and get login error then run below command:

        aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws


=== "Kubernetes - Manifest"

    Create a namespace:

        kubectl create ns zinc

    Create the deployment and port forward:

        kubectl apply -f https://raw.githubusercontent.com/zinclabs/zincobserve/main/k8s/kube-deployment.yaml
    
    Expose the zinc service by port-forwarding:

        kubectl -n zinc port-forward svc/z 5080:5080

    Now point your browser to [http://localhost:5080](http://localhost:5080) and login

=== "Kubernetes - Helm"

    Update Helm values located in [values.yaml](https://github.com/zinclabs/zincobserve/blob/main/helm/zinc/values.yaml)

    Create the namespace:

        kubectl create ns zinc

    Install the chart:

        helm install zinc helm/zinc -n zinc

    ZincObserve can be made available with an ingress or port-forward:
    
        kubectl -n zinc port-forward svc/zinc 5080:5080

    Now point your browser to [http://localhost:5080](http://localhost:5080) and login



## Load sample data

We will use JSON API to load sample log data. 


```shell
curl -L https://zinc-public-data.s3.us-west-2.amazonaws.com/zinc-enl/sample-k8s-logs/k8slog_json.json.zip -o k8slog_json.json.zip
unzip k8slog_json.json.zip
curl http://localhost:5080/api/default/quickstart1/_json -i -u admin@example.com:Complexpass#123  --data-binary "@k8slog_json.json"
```


## Search for data

Point your browser to [http://localhost:5080](http://localhost:5080) and login

1. Select the index quickstart1 from drop down in the left
1. Search for match_all('error') in search bar and click the search button on right.

Click on the info button next to the search bar to see examples on how to search.
