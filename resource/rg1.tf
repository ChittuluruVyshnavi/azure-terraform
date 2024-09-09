resource "azurerm_resource_group" "rg1" {
  name     = var.rg_name_map.rg1_name
  location = var.location
}
