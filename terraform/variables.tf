
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
  default = "ContainerGroup-devops-test"
}

variable "container_name" {
  type    = string
  default = "LittleAppContainer"
}

variable "container_image" {
  type    = string
  default = "LittleAppIamge"
}

variable "container_image_tag" {
  type    = string
  default = "latest"
}
