kubectl apply -f hostpath.yml
kubectl apply -f hostpath-pvc.yml
kubectl apply -f apache-deployment.yml
kubectl expose deployment httpd --type=NodePort
minikube service httpd