output "database" {
  value = module.mariadb.database
}

output "server" {
  value     = module.mariadb.server
  sensitive = true
}
