variable "nhn_user_name" {
  description = "NHN Cloud username"
  type        = string
  sensitive   = true
  default     = "dummy"
}

variable "nhn_tenant_id" {
  description = "NHN Cloud tenant ID"
  type        = string
  sensitive   = true
  default     = "dummy"
}

variable "nhn_password" {
  description = "NHN Cloud password"
  type        = string
  sensitive   = true
  default     = "dummy"
}

variable "nhn_auth_url" {
  description = "NHN Cloud auth URL"
  type        = string
  default     = "https://api-identity-infrastructure.nhncloudservice.com/v2.0"
}

variable "nhn_region" {
  description = "NHN Cloud region"
  type        = string
  default     = "KR1"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "Subnet CIDR"
  type        = string
  default     = "10.0.1.0/24"
}

variable "object_storage_name" {
  description = "Object Storage container name"
  type        = string
  default     = "statusboard-bucket"
}

variable "nhn_secret_key" {
  description = "NHN Cloud Secret Key"
  type        = string
  sensitive   = true
}

variable "nhn_api_key" {
  description = "NHN Cloud API Key"
  type        = string
  sensitive   = true
}
variable "instance_name" {
  description = "Instance name"
  type        = string
  default     = "statusboard-test-vm"
}

variable "flavor_id" {
  description = "Flavor for the VM"
  type        = string
  default     = "t2.c1m1"
}

variable "image_id" {
  description = "Image ID"
  type        = string
  default     = "ubuntu-22.04-uuid" # 실제 UUID로 교체해야 함
}

variable "key_pair" {
  description = "SSH keypair"
  type        = string
}
