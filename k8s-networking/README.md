Shell history
```
10004  vagrant up
10005* systemctl enable docker.service
10006  kubectl get nodes
10007  export KUBECONFIG="${PWD}/config"
10009  kubectl get nodes
10011  kubectl apply -f deployments/redis-deployment.yml
10012  kubectl get pods
10013  kubectl apply -f deployments/redis-service.yml
10014  kubectl get service 
10015  kubectl exec -it redis-deployment-6ddf544494-gk2qw sh
10019  kubectl delete deployments/redis-deployment.yml
10020  kubectl delete deployments/redis-deployment
10021  kubectl get deployments
10022  kubectl delete svc redis-svc
10023  kubectl apply -f deployments/redis-deployment.yml
10024  kubectl apply -f deployments/redis-service.yml
10025  kubectl exec -it redis-deployment-6ddf544494-gk2qw -- /bin/sh
10026  kubectl exec -it redis-deployment-6ddf544494-c76xf -- /bin/sh
10027  kubectl apply -f deployments/redis-commander-deployment.yaml
10028  kubectl apply -f deployments/redis-commander-service.yaml
10029  kubectl get pods
10030  kubectl get services
10031  kubectl port-forward service/redis-commander 8080:8080
10032* curl localhost:8080
10033  kubectl get endpoints
10034  kubectl describe service redis-commander
10035  kubectl edit deployment redis-commander
10036  kubectl get endpoints
10037  kubectl get pods
10038  kubectl describe service redis-commander
10039  kubectl get pod -o wide
10040  vagrant ssh master
10042  kubectl port-forward redis-commander-5dbdb5d47c-f78mr 8080:8081
10049  kubectl get daemonset --all-namespaces
10050  kubectl get nodes
10051  kubectl -n kube-system get pods
10052  kubectl get svc
10053  kubectl edit service redis-commander
10055  kubectl edit service redis-commander
10056  kubectl get svc
10057  kubectl describe service redis-commander
10058  kubectl get nodes
10059  kubectl describe node worker1
10060  kubectl apply -f nginx-ingress-v0.24.1.yaml
10062  kubectl get pods --all-namespaces
10063  kubectl get deployments default-http-backend -n=ingress-nginx
10064  kubectl port-forward service/default-http-backend -n=ingress-nginx 8080:80
10065  kubectl get services --all-namespaces
10066  kubectl apply -f ./deployments/redis-commander-ingress.yaml
10067  kubectl get ingress --all-namespaces
10068  kubectl get ingress
10069  kubectl describe ingress redis-commander
10070  kubectl get services --all-namespaces
10071  kubectl get pods --all-namespaces
10072  kubectl exec -it nginx-ingress-controller-746767f76d-2tlhn -n=ingress-nginx bash
10073  kubectl get service redis-commander
10075  kubectl run -it --rm=true busybox --image=busybox:1.31.0
10076  kubectl delete ingress redis-commander
10077  kubectl delete service redis
10078  kubectl delete service redis-commander
10079  kubectl delete deployments/redis-deployment
10080  kubectl get deployments
10081  kubectl delete deployments redis-commander
10082  kubectl get pods
10083  vagrant destroy -f
```