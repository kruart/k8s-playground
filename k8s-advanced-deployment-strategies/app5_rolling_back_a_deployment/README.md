### Rolling back a deployment
1. Create deployment and service, then verify if your service was exposed correctly:
```
kubectl apply -f deployment-prod.yaml --record
kubectl apply -f service.yaml --record
minikube service entry-point
```
Note: The `--record` flag allows you to record current command as part of the resources being created or updated.  

2. Perform a rolling update and upgrade the application to version 2.0.0:
```
kubectl edit deployment app # change the image to learnk8s/app:2.0.0
minikube service entry-point
``` 
3. Inspect the rollout history with:
```
kubectl rollout history deployment app
```
4. Let's rollback the Deployment to version 1.0.0:
```
kubectl rollout undo deployment app
minikube service entry-point
```
5. Let's deploy version 2.0.0 and 3.0.0 of the application in that order:
```
kubectl set image deployment app application=learnk8s/app:2.0.0
kubectl set image deployment app application=learnk8s/app:3.0.0
kubectl rollout history deployment app
```
6. You can revert to a specific point in time with `--to-revision`. Let's revert to the first deployment:
```
kubectl rollout undo deployment app --to-revision=3
```






Bash history
```
10051  kubectl apply -f deployment-prod.yaml --record
10052  kubectl get pods
10057  kubectl apply -f service.yaml --record
10058  minikube service entry-point
10059  kubectl edit deployment app
10060  minikube service entry-point
10061  kubectl rollout history deployment app
10062  kubectl rollout undo deployment app
10063  kubectl rollout history deployment app
10064  minikube service entry-point
10065  kubectl set image deployment app application=learnk8s/app:2.0.0
10066  kubectl set image deployment app application=learnk8s/app:3.0.0
10067  kubectl rollout history deployment app
10068  kubectl rollout undo deployment app --to-revision=3
10072  kubectl rollout history deployment app
10073  kubectl rollout undo deployment app --to-revision=5
10077  kubectl delete deployments/app
10078  kubectl delete service entry-point 
```