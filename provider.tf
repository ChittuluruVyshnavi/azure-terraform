terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
  }
  subscription_id = "5cfdfe11-220e-4b0e-8f53-79e9d904cbca"
  tenant_id       = "89e4123a-baa9-4d65-8de2-3d19fc00ba1d"
  client_id       = "e6aac8bb-036b-4d24-b984-5a1635fb43dc"
  client_secret   = "36f8Q~wIh3o2ks_wtwfuPGEl.XkqkXcp1VNTua8."
}
