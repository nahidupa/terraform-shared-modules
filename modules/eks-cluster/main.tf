provider "kubernetes" {	
 
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.cluster.token
  load_config_file       = false
  version                = "1.11.3"
}



module "eks_cluster" {
      source = "git::https://github.com/terraform-aws-modules/terraform-aws-eks.git?ref=tags/v13.2.1"

      cluster_name    = var.cluster_name
      
      cluster_version = var.cluster_version

      subnets         = var.subnets 

      vpc_id          = var.vpc_id

      worker_groups = var.worker_groups

      config_output_path =var.config_output_path
      
      write_kubeconfig=var.write_kubeconfig
    }