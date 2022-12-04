resource "azurerm_mariadb_firewall_rule" "pike" {
  for_each            = var.rules
  name                = each.key
  resource_group_name = each.value.resource_group_name
  server_name         = each.value.server_name
  start_ip_address    = each.value.start_ip_address
  end_ip_address      = each.value.end_ip_address
}

#################################################
## example
#################################################
# variable "rule" {
#   type = map
#   default = {
#     "rule1"={
#     name = "test-rule"
#     resource_group_name = "test-rg"
#     server_name         = "test-server"
#     start_ip_address    = "40.112.8.12"
#     end_ip_address      = "40.112.8.12"
#   }}
# }


variable "rules" {
  type = map(any)
}
