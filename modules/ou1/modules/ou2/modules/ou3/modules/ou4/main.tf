resource "aws_organizations_organizational_unit" "this" {
  name      = var.ou_name
  parent_id = var.parent_ou_id
}

module "ou_5" {
  for_each     = var.child_ou_names
  source       = "./modules/ou5"
  ou_name      = each.key
  parent_ou_id = aws_organizations_organizational_unit.this.id
}

