variable "nhn_user_name" {
  description = "NHN Cloud username for IAM authentication."
  type        = string
  sensitive   = true
}

variable "nhn_tenant_id" {
  description = "NHN Cloud tenant ID."
  type        = string
  sensitive   = true
}

variable "nhn_password" {
  description = "NHN Cloud password for IAM authentication."
  type        = string
  sensitive   = true
}

variable "nhn_api_key" {
  description = "NHN Cloud API Key for Object Storage authentication."
  type        = string
  sensitive   = true
}

variable "nhn_secret_key" {
  description = "NHN Cloud Secret Key for Object Storage authentication."
  type        = string
  sensitive   = true
}

variable "nhn_auth_url" {
  description = "NHN Cloud auth URL for IAM."
  default     = "https://api-identity.infrastructure.nhncloudservice.com/v2.0"
}

variable "nhn_region" {
  description = "NHN Cloud region."
  type        = string
}

variable "instance_name" {
  description = "Name for the compute instance."
  type        = string
  default     = "statusboard-test-vm"
}

variable "flavor_id" {
  description = "Flavor ID for the compute instance."
  type        = string
  default     = "t2.c1m1"
}

variable "key_pair" {
  description = "Key pair name for the compute instance."
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "192.168.0.0/16"
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet."
  type        = string
  default     = "192.168.0.0/24" # VPC CIDR 범위 내의 값이어야 합니다.
}

