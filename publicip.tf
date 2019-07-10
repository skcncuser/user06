resource "azurerm_public_ip" "myterraformpublicip" {
    name                         = "user06PublicIP"
    location                     = "koreasouth"
    resource_group_name          = "${azurerm_resource_group.myterraformgroup.name}"
    allocation_method            = "Dynamic"
}
