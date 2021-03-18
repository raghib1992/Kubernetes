deploy POD  #kubectl run <pod-name> --image=nginx
List of POD #kubectl get pods
Details of POD #kubectl describe pod <pod-name>
               #kubectl get pods -o wide
create pod using definition file #kubectl create -f pod-definition.yaml
pod definition file 
            pod-definition.yaml
              apiVersion: v1
              kind: Pod
              metadata:
                name: nginx-2
                labels:
                  env: prod
                  owner: Nadim
              spec:
                containers:
                  - name: nginx
                    image: nginx
                  - name: busybox
                    image: busybox
