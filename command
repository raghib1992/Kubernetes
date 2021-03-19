deploy POD  #kubectl run <pod-name> --image=nginx
List of POD #kubectl get pods
Details of POD #kubectl describe pod <pod-name>
               #kubectl get pods -o wide
create pod using definition file #kubectl create -f pod-definition.yaml
create replication controller # kubectl crreate -f rc-definition.yaml
create replica Set # kubectl create -f replicaSet-definition.yaml
create Deployment # kubectl create -f deployment-definition.yaml
                  # kubectl set image <definition-file-name> nginx1.9.0=nginx1.9.1
get list of replication controller # kubectl get replicationcontroller
get list of replicaSet # kubectl get replicasets
get list of deployment # kubectl get deployments

check status of rollout # kubectl rollout status deployment /<deployment-name>
TO undo change and upgrade # kubectl rollout undo deployment/<deployment-name>
                           # kubectl rollout history <deloyment-name>

To record cause of the change # kubectl create -f <filename> --record
To edit # kubectl edit deployment <deployment-name> --record
To check difference between Recreate and rolling update # kubectl describe deployment <deployment-name>

To create service # kubectl create -f service-definition.yaml
To get the list # kubectl get svc

Update no of replicas in replicaset # kubectl replace -f <definition-file>
                                    # kubectl scale --replicas=6 deployment/<deployment-name>
                                    # kubectl scale --replicas=6 replicaset <name-of-rc>