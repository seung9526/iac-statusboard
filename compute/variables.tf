# compute/variables.tf - Updated variables

variable "subnet_id" {
  type = string
}
variable "network_id" {
  type = string
}

variable "secgroup_id" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "flavor_id" {
  type = string
}

variable "image_id" {
  description = "Image ID for the compute instance."
  type        = string
}

variable "key_pair" {
  type = string
}

variable "nhn_region" {
  type = string
}

variable "public_network_id" {
  type = string
}

variable "assign_floating_ip" {
  description = "Whether to create a floating IP for this instance."
  type        = bool
  default     = false
}