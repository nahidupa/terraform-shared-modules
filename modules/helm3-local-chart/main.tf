provider "helm" {
   kubernetes {
     config_path = var.k8s_config_path
   }
}

resource "helm_release" "local" {
  name       = var.name
  chart      = var.charts 
  namespace  = var.namespace
  values     =  [var.chart-values] 
  skip_crds = true
}