commands used for that application

```
 9967  docker run -it -p 8080:8080 learnk8s/app:1.0.0
 9968  dcna
 9969  docker run -it -p 8080:8080 learnk8s/app:2.0.0
 9970  docker run -it -p 8080:8080 learnk8s/app:3.0.0
 9976  k8s-advanced-deployment-strategies/app_1
 9978  minikube start
 9979  kubectl apply -f deployment.yaml
 9980  kubectl get pods
 9981  kubectl apply -f service.yaml
 9982  kubectl get svc
 9984  minikube ip
 9985  minikube service entry-point
 9986  kubectl edit deployment app   # go and edit image version
 9987  kubectl get pods
 9988  minikube service entry-point --url #
 9991  kubectl rollout status deploy/app  # displays status logs in live mode
 9998  kubectl delete deployment/app
 9999  kubectl delete service entry-point
10000  minikube stop
```