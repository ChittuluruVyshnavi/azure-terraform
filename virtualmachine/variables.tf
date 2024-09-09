variable "rg_name" {
    type        = string
    default     = "reource_group"
    description = "Name of the resource group"
  
}

variable "location" {
    type        = string
    default     = "West US"
    description = "location for the resource group"
  
}

variable "vnet_name" {
    type        = string
    default     = "my_vnet"
    description = "virtual network name"
  
}

variable "subnet_name" {
    type        = string
    default     = "my_subnet"
    description = "subnet name"
  
}

