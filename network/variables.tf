variable "nhn_region" {
  description = "NHN Cloud region."
  type        = string
}
variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}
variable "subnet_cidr" {
  description = "The CIDR block for the subnet."
  type        = string
}
variable "public_network_id" {
  description = "The ID of the Public Network for external router."
  type        = string
}

variable "igw_id" {
  description = "The ID of the Internet Gateway."
  type        = string
  default     = "26562caf-99a9-4f93-8a14-d6bb309b9c7c"
}

