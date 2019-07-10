resource "azurerm_public_ip" "myterraformpublicip2" {
    name                         = "user06PublicIP2"
    location                     = "koreasouth"
    resource_group_name          = "${azurerm_resource_group.myterraformgroup.name}"
    allocation_method            = "Dynamic"
}
