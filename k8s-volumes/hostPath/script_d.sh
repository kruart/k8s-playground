kubectl delete deployments/httpd
kubectl delete service httpd
kubectl delete persistentvolumeclaims hostpath-pvc
kubectl delete persistentvolume hostpath-vol
echo "ok"
