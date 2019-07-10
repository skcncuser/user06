resource "azurerm_network_interface" "myterraformnic2" {
    name                = "user06NIC2"
    location            = "koreasouth"
    resource_group_name = "${azurerm_resource_group.myterraformgroup.name}"
    network_security_group_id = "${azurerm_network_security_group.myterraformnsg2.id}"

    ip_configuration {
        name                          = "user06NicConfiguration2"
        subnet_id                     = "${azurerm_subnet.myterraformsubnet.id}"
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = "${azurerm_public_ip.myterraformpublicip2.id}"
    }
}
