resource "azurerm_virtual_machine" "myterraformvm2" {
    name                  = "user06VM2"
    location              = "koreasouth"
    resource_group_name   = "${azurerm_resource_group.myterraformgroup.name}"
    network_interface_ids = ["${azurerm_network_interface.myterraformnic2.id}"]
    vm_size               = "Standard_DS1_v2"

    storage_os_disk {
        name              = "user06OsDisk2"
        caching           = "ReadWrite"
        create_option     = "FromImage"
        managed_disk_type = "Premium_LRS"
    }

    storage_image_reference {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "18.04-LTS"
	version   = "latest"
    }

    os_profile {
        computer_name  = "user06vm2"
        admin_username = "azureuser"
    }

    os_profile_linux_config {
        disable_password_authentication = true
        ssh_keys {
            path     = "/home/azureuser/.ssh/authorized_keys"
            key_data = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5LVpuYldWB4KafXdjvCo7zkDss35gGiARzxPPMEdjylmRyFNzfsGMDIlFwEEvxeKt93X3kldAon4g4/WX7vsEIwjKD7/JKxoVyaUlU07M/iwgeSXdrAtln+rb4J1WtT0kQdEx5De/6Af2OjxWZkXzhmHYJbWeqIvwQPbYFJBIZHpneYuAeurbfXssNVJMg6ZS0Ol99OVeP+MiepROco9OpqCttXe1nsY20nYGktNaQe+FgquCj99hsCADhRJwWt2ApL02Th2GANgQFgb1LgCXfeGjidcrqgmS46upCCEj97TgjjbJ4p1bc4IClfVX0zjJEcS1Vs+As4d/jAg+ZoQ1 user06@cc-61fb8f56-7f446bcbbb-tjdhw"
        }
    }
}
