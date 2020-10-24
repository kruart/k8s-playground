You need to copy index.html to host machine using next command:
```
minikube ssh-key
scp -i $(minikube ssh-key) index.html docker@$(minikube ip):/home/docker/app/sharedfolder
```

Shell history:
```
 9946  minikube start
 9948  kubectl apply -f hostpath.yml
 9949  kubectl apply -f hostpath-pvc.yml
 9950  kubectl apply -f apache-deployment.yml
 9952  kubectl apply -f hostpath-pvc.yml
 9956  kubectl expose deployment httpd --type=NodePort
 9957  minikube service httpd
 9960  kubect get pods
 9964  minikube --help
 9965  minikube logs
 9967  kubectl describe nodes minikube 
 9971  minikube ip
 9973  docker inspect minikube
 9974  minikube ssh
 9982  minikube ssh-key
 9988  scp -i $(minikube ssh-key) ./shared_folder/index.html docker@$(minikube ip):~/app/sharedfolder
 9989  minikube ssh
 9990  kubectl exec -it httpd-6994747659-7z4gc -- /bin/bash
 9991  kubectl describe pods httpd-6994747659-4zrkf
 9992  kubectl describe pv hostpath-vol
 9993  kubectl describe pvc hostpath-pvc
 9996  kubectl delete deployments/httpd
 9997  kubectl delete service httpd
 9998  kubectl delete persistentvolumeclaims hostpath-pvc
 9999  kubectl delete persistentvolume hostpath-vol
```