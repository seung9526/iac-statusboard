variable "instance_name" {
  description = "Instance name for the VM"
  type        = string
  default     = "statusboard-test-vm"
}

variable "flavor_id" {
  description = "Flavor for the VM"
  type        = string
  default     = "t2.c1m1"
}

variable "image_id" {
  description = "Image ID for the VM"
  type        = string
  default     = "ubuntu-22.04-uuid"
}

variable "key_pair" {
  description = "SSH Key Pair for VM"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "secgroup_id" {
  description = "Security Group ID"
  type        = string
}

variable "network_id" {
  description = "Network ID for the port"
  type        = string
}

