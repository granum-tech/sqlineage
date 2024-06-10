terraform {
  backend "azurerm" {
    storage_account_name = "STORAGE_ACCOUNT_NAME"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
    access_key           = "STORAGE_ACCESS_KEY"
  }
}
