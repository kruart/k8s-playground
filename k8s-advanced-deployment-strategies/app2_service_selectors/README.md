Run all deployments scripts and service:
```
kubectl apply -f deployment-v1.yaml
kubectl apply -f deployment-v2.yaml
kubectl apply -f deployment-v3.yaml
kubectl apply -f service.yaml
```
Then use curl command to see how traffic is distributed to all apps v1,v2,v3,
because they all have label `name: app`.   
Note that we also bind service to that label in `service.yaml` file:
```yaml
selector:
    name: app
``` 
If you change selector to point to `version: 2.0.0`, the traffic will be served
only from Pods that have label `version: 2.0.0`


Bash history
```
10004  minikube start
10005  kubectl apply -f deployment-v1.yaml
10006  kubectl apply -f deployment-v2.yaml
10007  kubectl get pods
10008  kubectl apply -f service.yaml
10009  minikube service entry-point --url
10010  minikube service entry-point
10014  kubectl edit service entry-point
10015  kubectl apply -f service.yaml
10016  kubectl get svc
10023  minikube service entry-point --url
10027* curl http://URL_FROM_PREVIOUS_COMMAND/
10028  kubectl get pods -l version=1.0.0
10029  kubectl get pods -l version=2.0.0
10030  kubectl get pods -l version=2.0.0,name=app
10031  kubectl get pods -l name=app
10036  kubectl apply -f deployment-v3.yaml
10038* minikube service entry-point --url
10027* curl http://URL_FROM_PREVIOUS_COMMAND/
10040  kubectl edit service entry-point
10043  kubectl get deployments
10044  kubectl edit deployment v2
10045  kubectl delete deployment/v1
10046  kubectl delete deployment/v2
10047  kubectl delete deployment/v3
10048  kubectl delete service entry-point 
```