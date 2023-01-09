azurerm-network-interface
=========================

Terraform [Azure Network Interface](https://learn.microsoft.com/en-us/azure/virtual-network/virtual-network-network-interface?tabs=network-interface-portal)

If `var.private_ip_address_allocation` is:

* **set** - create resource
* **not set** - read existing resource data

Required providers
------------------

* [hashicorp/azurerm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)

Variables
--------------

* `variables.tf`
  * `separator`: Single character to separate segments in object's name.
  * `name`: The name of the virtual network. Generated from tags if not set.
  * `location`: The location/region where the virtual network is created.
  * `tags`: A mapping of tags to assign to the resource.
  * `tags_keys`: The list of tags keys.
  * `tags_keys`: The list of tags values.
  * `names_keys`: The list of names keys to be used for name generation.
* `network_interface.vars.tf`
  * `resource_group_name`: The name of the resource group in which to create the virtual network.
  * `ip_configuration_name`: A name used for this IP Configuration.
  * `ip_configuration_subnet_id`: The ID of the Subnet where this Network Interface should be located in.
  * **`private_ip_address_allocation`**: The allocation method used for the Private IP Address. Possible values are Dynamic and Static.

Outputs
--------------

* `data`: Network interface data.

Dependencies
------------

*No* *dependencies*

Examples
--------

* `main.tf`

  ```terraform
  module "azurerm_network_interface" {
    sources = "github.com/mario-slowinski/terraform-azurerm-network-interface"
  }
  ```

License
-------

[GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.html)

Author Information
------------------

[mario.slowinski@gmail.com](mailto:mario.slowinski@gmail.com)
