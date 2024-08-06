variable "region" {
  description = "region where instances will be deployed"
  type = string
}

variable "instance_count" {
  description = "number of instances to be deployed"
  type = list(string)
}