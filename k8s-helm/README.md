Shell history
```
 9899  helm install app .
 9900  helm delete app
 9910  helm install app .
 9911  minikube ip
 9919  minikube service app --url
 9920  helm delete app
 9921  helm install app .
 9922  minikube service app --url
 9923  minikube ip
 9924  kubectl get ingress
 9925  kubectl describe ingress app
 9929  helm delete app
 9931  minikube stop
 9933  minikube delete
 9934  minikube start --driver=docker
 9935  helm install app .
 9936  minikube ip
 9937  curl 172.17.0.3
 9938  minikube service app
 9939  kubectl describe service app
 9940  kubectl get ingress
 9941  kubectl get svc
 9942  kubectl get deployments
 9943  curl http://172.17.0.3
 9944  kubectl get po -n kube-system
 9945  kubectl describe kube-proxy-7gprp 
 9946  kubectl get pods
 9947  kubectl get nodes
 9948  kubectl get pod kube-proxy-7gprp 
 9949  kubectl get pod app-7b8c999b48-nh76n
 9950  kubectl describe pod app-7b8c999b48-nh76n
 9951  helm delete app
 9952  helm install app .
 9953  minikube ip
 9954  curl http://172.17.0.3
 9955  helm ls
 9956  helm delete app
 9957  cd ../k8s-volumes
 9958  cd hostPath
 9959  ./script_a.sh
 9960  minikube service httpd
 9961  minikube ip
 9962  minikube service httpd
 9963  ./script_d.sh
 9964  ../../k8s-helm
 9965  ls
 9966  helm install app .
 9967  minikube service app
 9968  kubectl get pods
 9969  kubectl describe deployments app
 9970  kubectl describe nodes minikube
 9971  docker inspect minikube
 9972  minikube ingress app
 9973  minikube service app
 9974  kubectl get pv
 9975  kubectl get pvc
 9976  kubectl describe pod app-7b8c999b48-2zdjx
 9977  sudo lsof -i -P -n | grep LISTEN
 9978  sudo lsof -i -P -n | grep 3000
 9979  docker psa
 9980  docker ps -a
 9981  minikube ssh
 9982  helm delete app
 9983  helm install app .
 9984  minikube ip
 9985  curl http://172.17.0.3
 9986  helm delete app
 9987  kubectl get svc
 9988  kubectl get deployments
 9989  kubectl get ingress
 9990  helm install app .
 9991  minikube ip
 9992  curl http://172.17.0.3
 9993  minikube service app
 9994  curl http://172.17.0.3
 9995  helm install app .
 9996  helm delete app
 9997  helm install app .
 9998  minikube service app
 9999  minikube ip
10000  curl http://172.17.0.3/
10001  cd k8s-helm
10002  helm install dev .
10003  minikube ip
10004  curl http://172.17.0.3/
10005  helm install prod .
10006  kubectl get pods,services,ingress
10007  minikube service dev
10008  minikube service dev-node-app
10009  minikube service prod-node-app
10010  touch values.yaml
10011  helm install staging .
10012  kubectl get pods
10013  helm install preprod . --set replicas=3
10014  kubectl get pods
10015  helm ls
10016  helm install test . --dry-run --debug
10017  kubectl get pods
10018  helm install test
10019  helm install test .
10020  helm ls
10021  kubectl get pods
10022  helm delete app
10023  helm delete dev
10024  helm delete preprod
10025  helm delete prod
10026  helm delete staging
10027  helm delete test
10028  helm ls
10029  helm install . --generate-name
10030  helm ls
10031  helm install dev .
10032  curl --header 'Host: dev.hello-world.dev' $(minikube ip)
10033  helm delete dev
10034  helm install dev .
10035  curl --header 'Host: dev.hello-world.dev' $(minikube ip)
10036  helm install prod .
10037  curl --header 'Host: prod.hello-world.dev' $(minikube ip)
10038  helm upgrade prod .
10039  kubectl get pods -l=track=canary
10040  kubectl get pods
10041  helm history prod
10042  helm rollback prod 1
10043  helm history prod
10044  kubectl get pods -l=track=canary  
```