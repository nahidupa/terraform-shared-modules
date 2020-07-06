provider "kubernetes" {	
 
  host                   = var.cluster_endpoint
  cluster_ca_certificate = base64decode(var.aws_eks_cluster_cluster_certificate_authority_data)
  token                  = var.aws_eks_cluster_auth_cluster_token
  load_config_file       = false
  version                = "1.11.3"
}


resource "kubernetes_namespace" "this" {
  metadata {
    name = var.namespace_name
    labels = var.namespace_labels
  }

}