# Kubernetes
all the command and concept of kuberneter

## Process of setup and using EKS 
# Install aws cli
# Install eksctl
# Install Kubectl
# definition(yaml) file for creating eks cluster
apiVersion: eksctl.io/v1alpha5

kind: ClusterConfig

metadata:
  name: EKS-sample
  region: ap-south-1

nodeGroups:
  - name: scale-spot
    desiredCapacity: 1
    maxSize: 10
    instancesDistribution:
      instanceTypes: [ "t2.small", "t3.small" ]
      onDemandBaseCapacity: 0
      onDemandPercentageAboveBaseCapacity: 0
    availabilityZones: ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
    iam:
      withAddonPolicies:
        autoScaler: true
    labels:
      nodegroup-type: stateless-workload
      instance-type: spot
    ssh: 
      publicKeyName: new-key

cloudWatch:
  clusterLogging:
    enableTypes: ["api", "audit", "authenticator"]


# command to create cluster
eksctl create cluster -f <eks-cluster-definition-file>

# command to check the list of cluster
eksctl get cluster

# command to check the list of nodegroup
eksctl get nodegroup --cluster <cluster-name>

# command to scale no. of nodegroup
eksctl scale nodegroup --cluster=<cluster-name> --nodes=5 --name=<nodegroup name>

# command to create only nodegroup through definition file
eksctl create nodegroup --config-file=<eks-cluster-definition-file> --include="new-node-group"

# command to delete only nodegroup from definition file
eksctl delete nodegroup --config-file=<eks-cluster-definition-file> --include=<node-name> --approve

# command to delete eks cluster
eksctl delete cluster -f <eks-cluster-definition-file>

# command for cluster auto scaler

# Command to install helm
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
# command to add official stable repo
helm repo add stable https://charts.helm.sh/stable
# command to check helm repo
helm repo list
# command to update repo
helm repo update
# command to rearch what reo have
helm search repo
# command to install pod
helm install <pod-name> stable/<app-name>
# command to uninstall pods
helm uninstall <pod-name>