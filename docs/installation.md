# Installation

You would need ZINC_FIRST_ADMIN_USER and ZINC_FIRST_ADMIN_PASSWORD environment variables when you start ZincSearch for the first time. You don't need them on subsequent runs of ZincSearch.



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


    Docker images are available at [https://gallery.ecr.aws/zinclabs/zinc](https://gallery.ecr.aws/zinclabs/zinc)

        mkdir data
        docker run -v /full/path/of/data:/data -e ZINC_DATA_PATH="/data" -p 4080:4080 \
            -e ZINC_FIRST_ADMIN_USER=admin -e ZINC_FIRST_ADMIN_PASSWORD=Complexpass#123 \
            --name zinc public.ecr.aws/zinclabs/zinc:latest


    Now point your browser to [http://localhost:4080](http://localhost:4080) and login

    **Error pulling image if you have AWS CLI installed?**

    If you have AWS CLI installed and get login error then run below command:

        aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws


=== "Kubernetes - Manifest"

    Create a namespace:

        kubectl create ns zinc

    Create the deployment and port forward:

        kubectl apply -f https://raw.githubusercontent.com/zinclabs/zinc/main/k8s/kube-deployment.yaml
    
    Expose the ZincSearch service by port-forwarding:

        kubectl -n zinc port-forward svc/z 4080:4080

    Now point your browser to [http://localhost:4080](http://localhost:4080) and login

=== "Kubernetes - Helm"

    Update Helm values located in [values.yaml](https://github.com/zinclabs/zinc/blob/main/helm/zinc/values.yaml)

    Create the namespace:

        kubectl create ns zinc

    Install the chart:

        helm install zinc helm/zinc -n zinc

    ZincSearch can be made available with an ingress or port-forward:
    
        kubectl -n zinc port-forward svc/zinc 4080:4080

    Now point your browser to [http://localhost:4080](http://localhost:4080) and login

=== "Kubernetes - Juju"

    You can use [Juju](https://juju.is] to deploy Zinc on any CNCF-conformant Kubnernetes. 
    
    To get started, ensure that you have bootstrapped Juju on Kubernetes. You can find how-to guides for various Kubernetes platforms in the Juju docs ([MicroK8s](https://juju.is/docs/olm/microk8s) / [EKS](https://juju.is/docs/olm/amazon-elastic-kubernetes-service-(amazon-eks)) / [AKS](https://juju.is/docs/olm/azure-kubernetes-service-(azure-aks)) / [GKE](https://juju.is/docs/olm/google-kubernetes-engine-(gke))).

    Create a new model:
    
        juju add-model zinc
    
    Deploy the charm:

        juju deploy --trust zinc-k8s 

    Check the status - wait until charm shows `active/idle`:

        juju status --watch 1s --color

    Fetch the auto-generated login password:
    
        juju run-action --wait zinc-k8s/0 get-admin-password

    If you're deployed on MicroK8s, you can use the address shown in `juju status` to reach Zinc directly. For other Kubernetes platforms, you can access Zinc using a port-forward:
    
        kubectl -n zinc port-forward svc/zinc-k8s 4080:4080
    
    Point your browser to [http://localhost:4080](http://localhost:4080) and login!
    
    Now Zinc is deployed, you can also deploy the [Canonical Observability Stack](https://charmhub.io/topics/canonical-observability-stack) and create relations to Zinc to enable automatic scraping with Prometheus, Grafana dashboard integration and log scraping with Loki.
