### Canary Deployments 
`Canary deployments are useful if you wish to test a feature with a small subset of your production users. 
 The strategy consists of creating a to second Deployment and routing a smaller part of the production traffic to it.`

1. Create the resource and add service:  
```
kubectl apply -f deployment-prod.yaml
kubectl apply -f service.yaml
```
2. Create a Deployment for  the canary application  
```
kubectl apply -f deployment-canary.yaml
```  
You should verify that four Pods are running(3 with version 1.0.0 and 1 pod with version 2.0.0):
```
 kubectl get pods --show-labels
 SERVICE_URL=$(minikube service entry-point --url)
 while true; do printf %"s\n" $(curl -s $SERVICE_URL) | grep h1; sleep .5; done
```
You should be able to see the application replying 1.0.0 all
the times. Only the version 1.0.0 of the application is actively
receiving traffic.
Let's change that and route some traffic to the canary deployment. 
In another terminal change the Service to point 
to the version 1.0.0 and 2.0.0 of the application with (The selector should be `name: app`):
```
 kubectl edit service entry-point  # go and edit selector to name: app
```
Now all Pods share the same label the traffic will be load balanced across the four Pods.
If you run curl script you will see `version 1.0.0` 3 out of 4 times 
and the canary `version 2.0.0` for the rest (75%-25% split) 
```shell script
 while true; do printf %"s\n" $(curl -s $SERVICE_URL) | grep h1; sleep .5; done
```
If you scale the canary deployment to 3 replicas 
then version `1.0.0`  and `2.0.0` will appears with the same frequency (50%-50% split)
```
kubectl edit deployment canary    # go and set replicas to 3
```
Now you see that your new application (canary version 2.0.0) works correctly. 
And we can move all our Pods to the new version:
```
kubectl edit service entry-point  # go and edit selector to version: 2.0.0
```  


Bash history

```
10004  kubectl apply -f deployment-prod.yaml
10005  kubectl get pods
10006  kubectl apply -f service.yaml
10007  minikube service entry-point
10008  kubectl apply -f deployment-canary.yaml
10009  kubectl get pods --show-labels
10010* minikube service entry-point --url
10012  kubectl edit service entry-point
10013  SERVICE_URL=$(minikube service entry-point --url)
10014  while true; do printf %"s\n" $(curl -s $SERVICE_URL) | grep h1; sleep .5; done
10015  kubectl edit deployments canary
10017  kubectl edit service entry-point
10018  kubectl get pods
10019  while true; do printf %"s\n" $(curl -s $SERVICE_URL) | grep h1; sleep .5; done
10020  kubectl delete deployment/v1
10021  kubectl delete deployment/canary
10022  kubectl delete service entry-point 
```