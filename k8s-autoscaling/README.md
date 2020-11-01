Shell history:
```
 9970  cd k8s-autoscaling
 9971  go run .
 9972  go run main.go
 9973  docker build -t learnk8s/autoscaling:v1 .
 9974  docker login
 9975  docker push learnk8s/autoscaling:v1
 9976  take kube
 9977  touch deployment.yaml
 9978  touch service.yaml
 9979  minikube start --driver=docker
 9991  kubectl create namespace autoscaling
 9993  cd ..
 9994  kubectl apply -f kube
 9995  kubectl get pods -n autoscaling
10000  kubectl get svc -n autoscaling
10001* minikube tunnel
10002  kubectl get svc -n autoscaling
10003  curl 10.102.41.240:8080
10004  go get github.com/prometheus/client_golang/prometheus
10005* go run main.go
10007  curl localhost:8080/metrics | grep myapp_http_requests_total
10008* docker build -t learnk8s/autoscaling:v2 .
10009* docker push learnk8s/autoscaling:v2
10010* minikube tunnel
10011  curl 10.102.41.240:8080
10012  cd k8s-autoscaling
10013  kubectl apply -f kube/deployment.yaml
10014  curl 10.102.41.240:8080
10015  curl 10.102.41.240:8080/metrics
10016  curl 10.102.41.240:8080/metrics | grep myapp_http_requests_total
10017  kubectl get pods -n autoscaling
10021  minikube service myapp
10022  kubectl get svc
10023  kubectl get services -n autoscaling
10024  minikube service myapp
10025  minikube service myapp --namespace autoscaling
10026  kubectl get pods -n autoscaling
10027  kubectl get svc -n autoscaling

# Adding prometheus
10002  minikube start --driver=docker
10003  kubectl create namespace metrics
10004  kubectl config set-context --current --namespace metrics
10005  kubectl get pods
10006  kubectl get pods -n autoscaling
10007  kubectl apply -f https://academy.learnk8s.io/prometheus-v2.12.0.yaml
10008  kubectl get pods
10009  kubectl get deployments
10010  kubectl get deploy
10011  kubectl get nodes
10012  kubectl get services
10013  minikube tunnel
10014  kubectl get services
10015  kubectl get configmaps
10016  kubectl get cm
10017  kubectl port-forward svc/prometheus 9090
10018  kubectl get cm prometheus-config -o yaml
10019  cd k8s-autoscaling/kube
10021  take prometheus
10023  touch prometheus.yaml
10024  kubectl create configmap --from-file=prometheus.yaml --namespace=metrics --dry-run -o yaml prometheus-config >prometheus-config.yaml
10025  kubectl apply -f prometheus-config.yaml
10026  curl -X POST localhost:9090/-/reload
10027  minikube tunnel
10028  curl 10.102.41.240:8080
10029  curl 10.102.41.240:8080/metrics | grep myapp_http_requests_total
10032  kubectl scale --replicas=2 -n autoscaling deployment myapp
10033  kubectl get services
10034  kubectl get services -n autoscaling
10035  curl 10.102.41.240:8080
10036  kubectl get services -n autoscaling
10037  curl 10.102.41.240:8080
10038  curl 10.102.41.240:8080/metrics | grep myapp_http_requests_total
10046  while true; do curl 10.102.41.240:8080; done  

# Adding prometheus adapter
10050  kubectl apply -f https://academy.learnk8s.io/prometheus-adapter-v0.5.0.yaml
10051  kubectl config set-context --current --namespace metrics
10052  kubectl get pods
10053  kubectl get deploy
10054  kubectl get deployment prometheus-adapter
10055  kubectl get svc prometheus-adapter
10056  kubectl get cm prometheus-adapter-config -o yaml
10057  kubectl get cm prometheus-adapter-config
10058  kubectl get apiservice v1beta1.custom.metrics.k8s.io
10059  kubectl proxy
10060  curl localhost:8001/apis/custom.metrics.k8s.io/v1beta1
10061  kubectl get cm prometheus-adapter-config
10062  kubectl port-forward svc/prometheus 9090
10068  minikube tunnel
10069  curl 10.102.41.240:8080
10070  cd k8s-autoscaling/kube/prometheus
10074  kubectl create configmap --from-file=config.yaml --namespace=metrics --dry-run -o yaml prometheus-adapter-config >prometheus-adapter-config.yaml
10081  kubectl apply -f prometheus-adapter-config.yaml
10082  kubectl delete pod -l app=prometheus-adapter
10083  curl localhost:8001/apis/custom.metrics.k8s.io/v1beta1
10084  kubectl proxy
10085  curl localhost:8001/apis/custom.metrics.k8s.io/v1beta1
10086  kubectl get pods
10087  kubectl delete pod -l app=prometheus-adapter
10088  kubectl get pods
10089  curl localhost:8001/apis/custom.metrics.k8s.io/v1beta1
10090  minikube tunnel
10091  kubectl proxy
10092  kubectl port-forward svc/prometheus 9090
10093  curl localhost:8001/apis/custom.metrics.k8s.io/v1beta1
10095  curl "localhost:8001/apis/custom.metrics.k8s.io/v1beta1/namespaces/autoscaling/pods/*/myapp_http_requests_per_second"
10098  while true; do curl 10.102.41.240:8080; done
10099  curl "localhost:8001/apis/custom.metrics.k8s.io/v1beta1/namespaces/autoscaling/pods/*/myapp_http_requests_per_second"
10100  kubectl config set-context --current --namespace autoscaling
10101  kubectl scale --replicas=1 -n autoscaling deployment myapp
10102  kubectl get pods

# Configuring the horizontal pod autoscaler (HPA)
 9994  cd ./kube
 9996  touch hpa.yaml
 9997  kubectl apply -f hpa.yaml
 9998  kubectl describe hpa myapp-hpa
 9999  kubectl get hpa
10000  kubectl get hpa myapp-hpa --watch
10001  k8s-autoscaling/kube
10002  kubectl get events --field-selector="involvedObject.name=myapp-hpa" --watch
10003* kubectl get deploy myapp --watch
10004* while true; do curl 10.102.41.240:8080; done
10005* kubectl get pods
10006* curl 10.102.41.240:8080
10007* curl 10.102.41.240:8080/metrics
10008* curl 10.102.41.240:8080/metrics | grep myapp_http_requests_total
10009* kubectl get pods
10010* kubectl get hpa myapp-hpa --watch
10012* while true; do curl 10.102.41.240:8080; done
10013* kubectl get pods         
```