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