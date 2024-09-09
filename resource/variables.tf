# variable "rg_name" {
#     type        = string
#     default     = "reource_group"
#     description = "Name of the resource group"
  
# }
# variable "rg1_name" {
#     type        = string
#     default     = "reource_group1"
#     description = "Name of the resource group"
  
# }
variable "location" {
    type        = string
    default     = "West US"
    description = "location for the resource group"
  
}
 variable "rg_name_map"{
    type = map(string)
    default = {
      rg1_name = "reource_group1"
      rg_name = "reource_group"
    }

 }
   
 


