resource "azurerm_resource_group" "lukasz" {
  name     = var.res_name
  location = var.location
}
resource "azurerm_storage_account" "lukasz" {
  name                     = var.stor_name
  resource_group_name      = azurerm_resource_group.lukasz.name
  location                 = azurerm_resource_group.lukasz.location
  account_tier             = var.acc_tier
  account_replication_type = var.acc_replication

  tags = {
    environment = var.storage_env
  }
}
resource "azurerm_storage_container" "lukasz" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.lukasz.name
  container_access_type = var.container_type
}
resource "azurerm_storage_blob" "lukasz" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.lukasz.name
  storage_container_name = azurerm_storage_container.lukasz.name
  type                   = var.blob_type

}