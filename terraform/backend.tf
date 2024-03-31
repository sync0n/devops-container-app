terraform {
  backend "azurerm" {
    resource_group_name   = "devops-test"
    storage_account_name  = "devopsteststorage123"
    container_name        = "devopstesttfstate"
    key                   = "terraform.tfstate"
  }
}
