variable "primary_subnet_ids" {
  type = list(string)
  description = "The private subnet IDs for the primary database"
}

variable "primary_security_group_ids" {
  type = list(string)
  description = "The security group IDs for the primary database"
}

variable "secondary_subnet_ids" {
  type = list(string)
  description = "The private subnet IDs for the secondary database"
}

variable "secondary_security_group_ids" {
  type = list(string)
  description = "The security group IDs for the secondary database"
}