variable "location"
{
  type = string
  default = "West Europe"
}
variable "res_name"
{
  type = string
  default = "lukasz"
}
variable "stor_name"
{
  type = string
  default = "lukaszkasiuba"
}
variable "acc_tier"
{
  type = string
  default = "Standard"
}
variable "acc_replication"
{
  type = string
  default = "GRS"
}
variable "storage_env"
{
  type = string
  default = "staging"
}
variable "app_serviceplan"
{
  type = String
  default = "service_plan_lukasz"
}
variable "os_type"
{
  type = string
  default = "Linux"
}
variable "sku_name"
{
  type = string
  default = "P1v2"
}
variable "linux_app_name"
{
  type = string
  default = "Lukasz_Linux_app"
}
variable "function_app_name"
{
  type = string
  default = "Lukasz_azure_functions"
}

