module "aks" {
  source  = "./modules/aks"
  
  enable_telemetry        = var.enable_telemetry
  kubernetes_cluster_name = var.kubernetes_cluster_name

  providers = {
    azurerm = azurerm
  }
  
}