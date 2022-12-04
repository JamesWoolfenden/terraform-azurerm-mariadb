variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "resource_group" {
  description = "Object that contains resource group details"
}


variable "admin_login" {
  type        = string
  description = "MariaDB admin username"
  default     = "lovelyhorses"
  validation {
    condition     = var.admin_login != "azure_superuser" && var.admin_login != "admin" && var.admin_login != "administrator" && var.admin_login != "root" && var.admin_login != "guest" && var.admin_login != "public" && length(var.admin_login) > 1 && length(var.admin_login) < 17
    error_message = "Admin login name cannot be 'azure_superuser', 'admin', 'administrator', 'root', 'guest' or 'public' and gt 1 and less than 17 chars."
  }
}

variable "server_name" {
  type        = string
  description = "The name of the MariaDB server"
  default     = "mariadbisfine"
  validation {
    condition     = length(var.server_name) > 2 && length(var.server_name) < 64
    error_message = "Server name to be greater than 2 and less than 64 chars."
  }
}

variable "db_name" {
  default = "mariadb_database"
}


variable "db_version" {
  type    = string
  default = "10.3"
}

variable "storage_mb" {
  type    = number
  default = 102400
}

variable "sku_name" {
  type    = string
  default = "GP_Gen5_4"
}

variable "configs" {
  type = map(any)

}
