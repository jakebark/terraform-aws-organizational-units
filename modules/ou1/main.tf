resource "aws_organizations_organizational_unit" "this" {
  name      = var.ou_name
  parent_id = var.root_ou_id
}

module "ou_2" {
  for_each       = var.child_ou_names
  source         = "./modules/ou2"
  ou_name        = each.key
  child_ou_names = each.value
  parent_ou_id   = aws_organizations_organizational_unit.this.id
}

