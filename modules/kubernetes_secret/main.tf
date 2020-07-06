provider "kubernetes" {	
 
  host                   = var.cluster_endpoint
  cluster_ca_certificate = base64decode(var.aws_eks_cluster_cluster_certificate_authority_data)
  token                  = var.aws_eks_cluster_auth_cluster_token
  load_config_file       = false
  version                = "1.11.3"
}

resource "kubernetes_secret" "this" {
  metadata {
    name = var.metadata_name
    namespace = var.metadata_namespace
    labels = var.metadata_labels
  }

    data = var.serect_data
 
}