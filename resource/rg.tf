resource "azurerm_resource_group" "rg" {
  name     = var.rg_name_map.rg_name
  location = var.location
}
