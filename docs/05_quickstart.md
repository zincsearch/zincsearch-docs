# Quickstart


We will do 2 things as part of the quickstart:

1. Install Zinc
1. Load sample data and perform search operations on it.

## Installation

You would need ZINC_FIRST_ADMIN_USER and ZINC_FIRST_ADMIN_PASSWORD environment variables when you start zinc for the first time. You don't need them on subsequent runs of zinc.



=== "Windows" 

    Binaries can be downloaded from [releases](https://github.com/zinclabs/zinc/releases) page for appropriate platform.


        set ZINC_FIRST_ADMIN_USER=admin
        set ZINC_FIRST_ADMIN_PASSWORD=Complexpass#123
        mkdir data
        zinc.exe


    Now point your browser to [http://localhost:4080](http://localhost:4080) and login

=== "MacOS - Homebrew"

    In your terminal:

        brew tap zinclabs/tap
        brew install zinclabs/tap/zinc
        mkdir data
        ZINC_FIRST_ADMIN_USER=admin ZINC_FIRST_ADMIN_PASSWORD=Complexpass#123 zinc 

    Now point your browser to [http://localhost:4080](http://localhost:4080) and login

=== "MacOS/Linux Binaries"
    Binaries can be downloaded from [releases](https://github.com/zinclabs/zinc/releases) page for appropriate platform.

    Create a data folder that will store the data

        mkdir data
        ZINC_FIRST_ADMIN_USER=admin ZINC_FIRST_ADMIN_PASSWORD=Complexpass#123 ./zinc 


    Now point your browser to [http://localhost:4080](http://localhost:4080) and login

=== "Docker"

    ------------------------


    Docker images are available at [https://gallery.ecr.aws/h9e2j3o7/zinc](https://gallery.ecr.aws/h9e2j3o7/zinc)

        mkdir data
        docker run -v /full/path/of/data:/data -e DATA_PATH="/data" -p 4080:4080 \
            -e ZINC_FIRST_ADMIN_USER=admin -e ZINC_FIRST_ADMIN_PASSWORD=Complexpass#123 \
            --name zinc public.ecr.aws/h9e2j3o7/zinc:latest


    Now point your browser to [http://localhost:4080](http://localhost:4080) and login

    **Error pulling image if you have AWS CLI installed?**

    If you have AWS CLI installed and get login error then run below command:

        aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws


=== "Kubernetes - Manifest"

    Create a namespace:

        kubectl create ns zinc

    Create the deployment and port forward:

        kubectl apply -f https://raw.githubusercontent.com/zinclabs/zinc/main/k8s/kube-deployment.yaml
    
    Expose the zinc service by port-forwarding:

        kubectl -n zinc port-forward svc/z 4080:4080

    Now point your browser to [http://localhost:4080](http://localhost:4080) and login

=== "Kubernetes - Helm"

    Update Helm values located in [values.yaml](helm/zinc/values.yaml)

    Create the namespace:

        kubectl create ns zinc

    Install the chart:

        helm install zinc helm/zinc -n zinc

    Zinc can be made available with an ingress or port-forward:
    
        kubectl -n zinc port-forward svc/zinc 4080:4080

    Now point your browser to [http://localhost:4080](http://localhost:4080) and login



## Load sample data

We will use bulk API to load sample data


```shell
curl -L https://github.com/zinclabs/zinc/releases/download/v0.1.1/olympics.ndjson.gz -o olympics.ndjson.gz
gzip -d  olympics.ndjson.gz 
curl http://localhost:4080/api/_bulk -i -u admin:Complexpass#123  --data-binary "@olympics.ndjson"
```


## Search for data

Point your browser to [http://localhost:4080](http://localhost:4080) and login

1. Select the index olympics from drop down in the left
1. Search for the word Gold in search bar and presse enter.

Click on the info button next to the search bar to see examples on how to search.
