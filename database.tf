resource "azurerm_mariadb_database" "example" {
  name                = var.db_name
  resource_group_name = var.resource_group.name
  server_name         = azurerm_mariadb_server.example.name
  charset             = "utf8"
  collation           = "utf8_general_ci"
}

variable "db_name" {
  default = "mariadb_database"
}
