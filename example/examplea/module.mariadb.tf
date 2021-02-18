module "mariadb" {
  source         = "../../"
  common_tags    = var.common_tags
  server_name    = "myfirstmariaserver"
  resource_group = azurerm_resource_group.examplea
}
