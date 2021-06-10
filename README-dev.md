
# Development
A special helm chart has been developed to tailor the horizontal cluster proportional autoscaler to all the taints and labels of the used node pools. Manual helm deployment has been used during development to gain faster feedback.
```
# Chart development
helm install cluster-proportional-autoscaler ./helm/cluster-proportional-autoscaler --dry-run --debug 
helm lint ./helm/cluster-proportional-autoscaler
helm upgrade cluster-proportional-autoscaler ./helm/cluster-proportional-autoscaler

# Chart deployment with own values
helm install cluster-proportional-autoscaler ./cluster-proportional-autoscaler --values ./helm/cluster_proportional_autoscaler_values.yaml
helm upgrade cluster-proportional-autoscaler ./cluster-proportional-autoscaler --values ./helm/cluster_proportional_autoscaler_values.yaml

# Cleanup
helm uninstall cluster-prroportional-autoscaler
```

# Used Sources
- https://github.com/kubernetes-sigs/cluster-proportional-autoscaler#horizontal-cluster-proportional-autoscaler-container
- https://banzaicloud.com/blog/creating-helm-charts
- https://banzaicloud.com/blog/creating-helm-charts-part-2
- https://github.com/hahow/common-chart