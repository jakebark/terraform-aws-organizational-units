variable "root_ou_id" {
  description = "root OU id, eg r-abcd"
  type        = string
}

variable "organizational_units" {
  type = map(any)
}
