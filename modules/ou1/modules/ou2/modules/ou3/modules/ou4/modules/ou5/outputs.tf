output "ou_map" {
  value = {
    (var.ou_name) = aws_organizations_organizational_unit.this.id
  }
}