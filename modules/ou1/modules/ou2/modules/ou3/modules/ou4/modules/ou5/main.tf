resource "aws_organizations_organizational_unit" "this" {
  name      = var.ou_name
  parent_id = var.parent_ou_id
}

