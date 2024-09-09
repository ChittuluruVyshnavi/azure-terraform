resource "azurerm_network_interface" "ani1" {
  name                = "ant1"
  location            = var.location
  resource_group_name = var.rg_name
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "vm2" {
  name                 = "vm3"
  location             = var.location
  resource_group_name  = var.rg_name
  network_interface_ids = [azurerm_network_interface.ani1.id]
  vm_size              = "Standard_DS1_v2"

  delete_os_disk_on_termination = true


  storage_os_disk {
    name              = "osdisk3"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  os_profile {
    computer_name  = "vm3"
    admin_username = "adminuser"
    admin_password = "Password1234!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}

