Shell histiory:
```
 9986  docker build -t knote-java .
 9988  docker network create knote
 9989  docker run --name=mongo --rm --network=knote mongo
 9990  docker run --name=knote-java --rm --network=knote -p 8080:8080 -e MONGO_URL=mongodb://mongo:27017/dev knote-java
 9991  docker run --name=mongo --rm --network=knote -p 27017:27017 mongo
 9992  docker run --name=knote-java --rm --network=knote -p 8080:8080 -e MONGO_URL=mongodb://mongo:27017/dev knote-java

 9981  kubectl explain deployment
 9982  kubectl explain deployment.spec.replicas
 9989  kubectl apply -f kube
 9990  kubectl get pods --watch
 9991  kubectl get pods
 9992  minikube service knote
 9994  kubectl delete -f kube

10007  kubectl apply -f kube
10009  minikube service knote
10010  kubectl scale --replicas=2 deployment knote
10011  kubectl get pods -l app=knote --watch
10012  minikube service knote
10013  curl http://172.17.0.2:32666/
10015  kubectl get pods -l app=knote
10027  kubectl delete -f kube 
```