
variable "name"{

}

variable "charts"{
    
}
variable "k8s_config_path"{
    
}

variable "namespace"{

    description = "(Optional) The namespace to install the release into. Defaults to default"
    default = "default"
    
}

variable "chart-values"{
    
}