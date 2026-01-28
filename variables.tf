variable "root_ou_id" {
  description = "root OU id, eg r-abcd"
  type        = string

  validation {
    condition     = can(regex("^r-[0-9a-z]{4,32}$", var.root_ou_id))
    error_message = "Root OU ID must be in format 'r-' followed by 4-32 alphanumeric characters."
  }
}

variable "organizational_units" {
  description = "Map of organizational units and their nested structure"
  type        = map(any)
}
