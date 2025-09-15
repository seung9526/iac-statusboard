variable "subnet_cidr" {
  description = "Subnet CIDR for application network"
  type        = string
  default     = "10.0.1.0/24"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "firewall_rules" {
  description = "List of firewall rules"
  type = list(object({
    protocol = string
    port     = string
    source   = string
  }))
  default = [
    { protocol = "tcp", port = "22",  source = "0.0.0.0/0" }, # SSH
    { protocol = "tcp", port = "80",  source = "0.0.0.0/0" }, # HTTP
    { protocol = "tcp", port = "443", source = "0.0.0.0/0" }  # HTTPS
  ]
}
