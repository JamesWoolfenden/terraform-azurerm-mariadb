module "mariadb" {
  source      = "../../"
  common_tags = var.common_tags
  server_name = "myfirstmariaserver"
}
