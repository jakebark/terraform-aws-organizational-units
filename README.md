# terraform-aws-organizational-units

Build Organizational Units (OUs) with Terraform.

## Inputs

```hcl
module "organizational_units" {
  source               = "jakebark/organizational-units/aws"
  version              = "0.1.0"
  root_ou_id           = data.aws_organizations_organization.this.roots[0].id
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

## Related Resources

- [jakebark/organizational-units/aws](https://registry.terraform.io/modules/jakebark/organizational-units/aws/latest)

