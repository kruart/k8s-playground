###Kubernates notes:
- `Ingress` is internal load balancer and `Service` is external load balancer
- The Service `targetPort` should match the `containerPort` of the container 
inside the Pod in deployments. `targetPort` and `containerPort` should always match. 
- The Service port can be any number. Multiple Services can use the same port because they have different IP addresses assigned.
- The Ingress retrieves the right Service by name and port. Two things should match in the Ingress and Service:  
  1. The `servicePort` of the Ingress should match the `port` of the Service
  2. The `serviceName` of the Ingress should match the `name` of the Service. 
  The Service port and the Ingress servicePort should always match.
- A Pod is a collection of containers that work as a single unit. 
Those containers cannot exist in isolation, and it makes sense to keep them together. 
As an example, you might want to log all incoming requests to your web app. 
Or you might want to use a proxy to filter all the request to your app. 
You could have one container such as Nginx dedicated to filtering traffic before it reaches the app.  
- There must be at least one shared label between `template.metadata.labels` 
and `selector.matchLabels` fields in deployment.
