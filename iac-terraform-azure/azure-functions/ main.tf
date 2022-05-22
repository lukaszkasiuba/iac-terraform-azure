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
resource "azurerm_service_plan" "lukasz" {
  name                = var.app_serviceplan
  resource_group_name = azurerm_resource_group.lukasz.name
  location            = azurerm_resource_group.lukasz.location
  os_type             = var.os_type
  sku_name            = var.sku_name
}
resource "azurerm_linux_function_app" "lukasz" {
  name                = var.linux_app_name
  resource_group_name = azurerm_resource_group.lukasz.name
  location            = azurerm_resource_group.lukasz.location

  storage_account_name = azurerm_storage_account.lukasz.name
  service_plan_id      = azurerm_service_plan.lukasz.id

  site_config {}
}
resource "azurerm_windows_function_app" "lukasz" {
  name                = var.function_app_name
  resource_group_name = azurerm_resource_group.lukasz.name
  location            = azurerm_resource_group.lukasz.location

  storage_account_name = azurerm_storage_account.lukasz.name
  service_plan_id      = azurerm_service_plan.lukasz.id

  site_config {}
}