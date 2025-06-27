variable "kubernetes_cluster_name" {
  type        = string
  description = "The name of the Kubernetes cluster."
  default     = "aks-cluster"
  nullable    = false
}