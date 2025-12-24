output "ou_map" {
  value = merge(
    {
      (var.ou_name) = aws_organizations_organizational_unit.this.id
    },
    flatten([
      for child in module.ou_3 : child.ou_map
    ])...
  )
}