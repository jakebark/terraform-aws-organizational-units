# terraform-aws-organizational-units

Build Organizational Units (OUs) with Terraform.

## Inputs

```hcl
module "organizational_units" {
  source               = ""
  version              = ""
  root_ou_id           = data.aws_organizations_organization.org.roots[0].id
  organizational_units = {
   "Workloads" = {
       "Dev" = {}
       "Test" = {
           "QAT" = {}
           "Pre-Prod" = {}
           }
       "Prod" = {}
       }
   "Infrastructure" = {}
   "Sandbox"        = {}
 }
}
```

## Outputs

- `module.organizational_units.ou_map` 
