### Blue-Green Deployments
`Blue-green deployment is a technique that reduces
downtime and  risk by running two identical 
productions environments called Blue and Green.
At any time, only one of the environments receives traffic.`

1. Firstly create `blue` deployment and service, 
then verify that your service was exposed correctly:

```
kubectl apply -f deployment-blue.yaml
kubectl apply -f service-blue-green.yaml
minikube service entry-point

# if you don't see results, use curl script below since browser cache the response heavily
SERVICE_URL=$(minikube service entry-point --url)
while true; do printf %"s\n" $(curl -s $SERVICE_URL) | grep h1; sleep .5; done 
```

2. Create `green` deployment and edit service selector to `version: 2.0.0`:
```
kubectl apply -f deployment-green.yaml
kubectl edit service entry-point
```

3. Test that second version of your application was deployed correctly:
```
while true; do printf %"s\n" $(curl -s $SERVICE_URL) | grep h1; sleep .5; done 
``` 



Bash history
```
10028  kubectl apply -f deployment-blue.yaml
10029  kubectl get pods
10030  kubectl apply -f service-blue-green.yaml
10031  minikube service entry-point
10032  minikube service entry-point --url
10033  SERVICE_URL=$(minikube service entry-point --url)
10034  while true; do printf %"s\n" $(curl -s $SERVICE_URL) | grep h1; sleep .5; done
10035  kubectl apply -f deployment-green.yaml
10036  kubectl edit service entry-point
10037  minikube service entry-point
10038  minikube service entry-point --url
10039  while true; do printf %"s\n" $(curl -s $SERVICE_URL) | grep h1; sleep .5; done
10040  kubectl delete deployments/green
10041  kubectl delete deployments/blue
10042  kubectl delete service entry-point 
```