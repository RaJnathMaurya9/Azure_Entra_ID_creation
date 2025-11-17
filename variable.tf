variable "domain_name" {
  description = "UPN domain to use for Entra ID user"
  type        = string
}

variable "default_password" {
  description = "Default password for all users"
  type        = string
}

variable "users" {
  description = "List of Display Names"
  type        = list(string)
}
