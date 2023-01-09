variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group in which to create the Network Interface."
  default     = ""
}

variable "ip_configuration_name" {
  type = string
  description = "A name used for this IP Configuration."
  default = ""
}

variable "ip_configuration_subnet_id" {
  type = string
  description = "The ID of the Subnet where this Network Interface should be located in."
  default = ""
}

variable "private_ip_address_allocation" {
  type = string
  description = "The allocation method used for the Private IP Address."
  default = ""
}
