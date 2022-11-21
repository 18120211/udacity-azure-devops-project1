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
  default = "minhvo"
}

variable "admin_password" {
  type = string
  default = "&&FFminhvo123"
}

variable "vm_size" {
  type = string
  default = "Standard_B1s"
}

variable "default_vm_capacity" {
  type = number
  default = 1
}

variable "min_vm_capacity" {
  type = number
  default = 1
}

variable "max_vm_capacity" {
  type = number
  default = 5
}

variable "notification_email" {
  type = string
  default = "minhthevo123@gmail.com"
}

variable "application_port" {
  type = number
  default = 80
}