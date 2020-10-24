Types of k8s volumes:  
- `emptyDir` It is a type of volume that is created when a Pod is first assigned to a Node. 
It remains active as long as the Pod is running on that node. 
The volume is initially empty and the containers in the pod can read and write the files in the emptyDir volume. 
Once the Pod is removed from the node, the data in the emptyDir is erased.
- `hostPath` − This type of volume mounts a file or directory from the host node’s filesystem into your pod.
- `gcePersistentDisk` − This type of volume mounts a Google Compute Engine (GCE) Persistent Disk into your Pod. 
The data in a gcePersistentDisk remains intact when the Pod is removed from the node.
- `awsElasticBlockStore` − This type of volume mounts an Amazon Web Services (AWS) Elastic Block Store into your Pod. 
Just like gcePersistentDisk, the data in an awsElasticBlockStore remains intact when the Pod is removed from the node.
- `nfs` − An nfs volume allows an existing NFS (Network File System) to be mounted into your pod. 
The data in an nfs volume is not erased when the Pod is removed from the node. The volume is only unmounted.
- `gitRepo` − A gitRepo volume mounts an empty directory and clones a git repository into it for your pod to use.
- `azureDiskVolume` − An AzureDiskVolume is used to mount a Microsoft Azure Data Disk into a Pod.
