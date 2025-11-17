resource "azuread_user" "users" {
  for_each = toset(var.users)

  display_name        = each.value
  user_principal_name = "${lower(replace(each.value, " ", ""))}@${var.domain_name}"
  password            = var.default_password

  force_password_change = false
}
