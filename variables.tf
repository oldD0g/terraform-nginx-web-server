variable "instance_size" {
   type = string
   description = "Azure instance size"
   default = "Standard_B1ls"
}

variable "location" {
   type = string
   description = "Region"
   default = "australiasoutheast"
}

variable "environment" {
   type = string
   description = "Environment"
   default = "dev"
}

variable "ssh_key_file" {
    type = string
    description = "File where existing SSH key is used for loading on instance"
    default = "../misc/id_rsa_for_azure.pub"
}
