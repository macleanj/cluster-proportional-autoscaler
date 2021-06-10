# cluster-proportional-autoscaler
This chart provide a buffer for cluster autoscaling to allow overprovisioning of cluster nodes. This is desired when you have workloads that need to scale up quickly without waiting for the new cluster nodes to be created and join the cluster. This chart is based  on the existing [Cluster Proportional Autoscaler](https://github.com/kubernetes-sigs/cluster-proportional-autoscaler).

It works but creating a deployment that creates placeholder pods of a lower than default `PriorityClass`. These placeholder pods request resources from the cluster but don't actually consume any resources. When normal pods request more resources on a specific node the placeholder pods will be evicted allowing the normal pods to be created. In its turn the placeholder pods will triggering a scale-up by the [cluster-autoscaler](https://github.com/kubernetes/autoscaler/blob/master/cluster-autoscaler).

This approach is the [current recommended method to achieve overprovisioning](https://github.com/kubernetes/autoscaler/blob/master/cluster-autoscaler/FAQ.md#how-can-i-configure-overprovisioning-with-cluster-autoscaler).


# install helm chart

1. Clone the repository to local machine
```
$ git clone git@github.com:macleanj/cluster-proportional-autoscaler.git
```
2. Navigate to the folder and use below command

```
$ helm install <release_name> <directory path where helm chart has been cloned>
```
