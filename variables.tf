# NHN Cloud 인증 정보
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
  type        = string
  default     = "https://api-identity.infrastructure.nhncloudservice.com/v2.0"
}

variable "nhn_region" {
  description = "NHN Cloud region."
  type        = string
}

# 공통 인스턴스 설정
variable "flavor_id" {
  description = "Flavor ID for compute instances."
  type        = string
  default     = "m2.c1m2"
}

variable "key_pair" {
  description = "Key pair name for compute instances."
  type        = string
}

# VPC/Subnet 설정
variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "192.168.0.0/16"
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet."
  type        = string
  default     = "192.168.0.0/24"
}
