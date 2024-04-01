
variable "resource_group_name" {
  type    = string
  default = "devops-test"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "acr_name" {
  type    = string
  default = "ContainerRegistrydevopstest"
}

variable "container_group_name" {
  type    = string
  default = "containerGroup-devops-test"
}

variable "container_name" {
  type    = string
  default = "littleapp-container"
}

variable "container_image" {
  type    = string
  default = "littleApp-iamge"
}

variable "container_image_tag" {
  type    = string
  default = "latest"
}
