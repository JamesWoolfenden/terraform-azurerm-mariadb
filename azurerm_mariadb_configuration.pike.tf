resource "azurerm_mariadb_configuration" "pike" {
  for_each            = var.configs
  name                = each.key
  resource_group_name = var.resource_group.name
  server_name         = var.server_name
  value               = each.value
}
