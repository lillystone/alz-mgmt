module "aks" {
  source  = "./modules/aks"
  version = "0.1.0"

  enable_telemetry        = var.enable_telemetry
  kubernetes_cluster_name = var.kubernetes_cluster_name

  providers = {
    azurerm = azurerm
  }
  
}