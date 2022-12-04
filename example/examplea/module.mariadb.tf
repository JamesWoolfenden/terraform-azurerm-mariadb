module "mariadb" {
  source         = "../../"
  common_tags    = var.common_tags
  server_name    = "myfirstmariaserver"
  resource_group = azurerm_resource_group.examplea
  rules = {
    "rule1" = {
      name                = "test-rule"
      resource_group_name = "test-rg"
      server_name         = "test-server"
      start_ip_address    = "40.112.8.12"
      end_ip_address      = "40.112.8.12"
  } }
  configs = {
    "interactive_timeout" = "600"
  }
}
