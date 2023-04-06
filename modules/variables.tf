variable "ami" {
  description = "AMI"
  type        = string
  default     = "ami-0533def491c57d991"
}

variable "key_name" {
  description = "EC2 Key Name"
  type        = string
  default     = "EC2-Ohio"
}

variable "instance_type" {
  description = "Instance Type"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Instance Name"
  type        = string
  default     = "Instance-1"
}

variable "instance-name-tag" {
  type    = string
  default = "Server from module"
}

variable "dev-tag" {
  type    = string
  default = "Development"
}

variable "vpc_id" {
  type    = string
  default = "vpc-07dfaff2e52bfcfc9"
}

variable "SSH" {
  type    = string
  default = "22"
}

variable "tcp" {
  type    = string
  default = "tcp"
}

variable "cidr" {
  type    = string
  default = "0.0.0.0/0"
}

variable "HTTP" {
  type    = string
  default = "80"
}

variable "HTTPS" {
  type    = string
  default = "443"
}

variable "egress-all" {
  type    = string
  default = "0"
}

variable "egress" {
  type    = string
  default = "-1"
}

variable "availability_zones" {
  type    = list
  default = ["us-east-2a", "us-east-2b"]
}

variable "lt-name" {
  type    = string
  default = "terraform-lt-1"
}

