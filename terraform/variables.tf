variable "region" {
  type    = string
  default = "eastus"
}

variable "project_name" {
  type = string
  default = "udacity-project-1"
}

variable "packer_resource_group_name" {
  type = string
  default = "rg-udacity-images"
}

variable "packer_image_name" {
  type = string
  default = "im-azure-project1"
}

variable "admin_username" {
  type = string
  default = "admin"
}

variable "admin_password" {
  type = string
  default = "admin"
}

variable "vm_size" {
  type = string
  default = "Standard_B1s"
}