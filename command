deploy POD  #kubectl run <pod-name> --image=nginx
List of POD #kubectl get pods
Details of POD #kubectl describe pod <pod-name>
               #kubectl get pods -o wide
create pod using definition file #kubectl create -f pod-definition.yaml
create replication controller # kubectl crreate -f rc-definition.yaml
create replica Set # kubectl crreate -f replicaSet-definition.yaml
create Deployment # kubectl crreate -f deployment-definition.yaml
get list of replication controller # kubectl get replicationcontroller
get list of replicaSet # kubectl get replicasets
get list of deployment # kubectl get deployments

check status of rollout # kubectl rollout status deployment /<deployment-name>

Update no of replicas in replicaset # kubectl replace -f <definition-file>
                                    # kubectl scale --replicas=6 <definition_file>
                                    # kubectl scale --replicas=6 replicaset <name-of-rc>