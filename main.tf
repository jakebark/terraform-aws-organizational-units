module "ou_1" {
  for_each       = var.organizational_units
  source         = "./modules/ou1"
  ou_name        = each.key
  child_ou_names = each.value
  root_ou_id     = var.root_ou_id
}
