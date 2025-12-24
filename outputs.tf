output "ou_map" {
  value = flatten([
    for ou in module.ou_1 : ou.organizational_units
  ])
}

