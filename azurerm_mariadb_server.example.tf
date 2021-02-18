
resource "azurerm_mariadb_server" "example" {
  name                = var.server_name
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name

  administrator_login          = var.admin_login
  administrator_login_password = random_string.password.result

  sku_name   = var.sku_name
  storage_mb = var.storage_mb
  version    = var.db_version

  auto_grow_enabled            = true
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  #obvious test
  public_network_access_enabled = false
  #test this i guess
  ssl_enforcement_enabled = true
}

#write to vault?
resource "random_string" "password" {
  length    = 12
  min_upper = 1
  min_lower = 1
  number    = true
  special   = true
}
