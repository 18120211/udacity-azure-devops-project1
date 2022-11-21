variable "region" {
  type    = string
  default = "eastus"
}

variable "project_name" {
  type = string
  default = "udacity-project-1"
}

variable "tags" {
  type = map(string)
  default = {
    project = "udacity-project-1"
  }
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

locals {
  ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC7ze18ZKAIKLeDGxtWNtSnwBXuC/IzsTNqwtBwG4dXijMrwHgNj2dtq4z8MKI28cmmwc0EI64n+PYZeSLQLgaqTQLUgLI6BeIHSFasQ60Su/zgwsdZ7O/ywVKy48iYJHzrzIyqBGQFo7kr3LK2C4nko9O7piKByW96Vr6fY11+jUD2SoNLpI2ivYIgDRrRjai3KlMjgXmCDmad1x/nUpsgLEzKmeeLv98C1J8dMe8QzD5qMx2lchFhFKupreICMNUkPy4KAByOGZMoFrB5//weVOnlAfEw+zVtcqaOeliXNn50AlUKckLr+0HImKVUdi07x9yttOzPXqav0BEKhkq86uSAucQcKBo9P3lrY88yeMnLagQmSBIe4j4MlOKSrApf7DsEaQ1PZNvPzMpO1aN/Fp3odDW9JQc2RsiskZOlVMxyKXZsuBGB2c/YzHxoWtLdYsnat0atne7VtYBh0fXjx/ajuRo2tZw0pyLe4NZv1RAKUGIMNlg0/lWbi8cehAk= minhvo@LAPTOP-79FTFJBM"
}