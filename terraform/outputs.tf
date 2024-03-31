output "container_app_url" {
  value = "http://${azurerm_container_group.cg.ip_address}"
}
