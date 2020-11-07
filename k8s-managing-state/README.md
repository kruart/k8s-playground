Using PV and PVC you can access to your data even after a pod will be deleted. 

Shell history:
```
10017  kubectl apply -f secret.yaml
10018  kubectl apply -f deployment-mysql.yaml
10019  kubectl get pods
10020  kubectl get deploy
10032  minikube ip
10033  minikube ssh
10039  kubectl delete pod mysql-deployment-778d5c4585-75gkf
10040  kubectl get pods
10041  minikube ssh
10043  mkdir data01
10045  touch pv.yaml
10046  kubectl apply -f pv.yaml
10050  minikube ssh
10051  kubectl get pv
10052  touch pvc.yaml
10053  kubectl apply -f pvc.yaml
10054  kubectl get pv,pvc
10055  kubectl apply -f deployment-mysql.yaml
10057  minikube ssh
10058  kubectl get pods
10059  kubectl delete pod mysql-deployment-d4c56c849-4tw95
10060  kubectl get pods
10061  minikube ssh
10062  kubectl apply -f pvc-standard.yaml
10063  kubectl get pv,pvc
10064  kubectl apply -f deployment-mysql2.yaml
10065  kubectl get pods
10066  kubectl apply -f service2.yaml
```

After minikube ssh command you can run shell for docker container and populate database (or use UI app for databases):
```
minikube ssh
docker exec -it <mysql-container-hash> sh
mysql -u mysql -p # password mysql
# use sample;
# create table pet (name VARCHER(20));
# show tables;
```

Delete mysql pod. Give k8s some time to recreate the pod and go to a new mysql container 
and see that your data(table) you created earlier are still there.