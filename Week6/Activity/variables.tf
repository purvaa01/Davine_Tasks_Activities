variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}
variable "vpc_id" {
  description = "Default VPC ID"
  type        = string
  default     = "vpc-012b56f7b54d2c077"
}

variable "subnet_id" {
  description = "subnet ID"
  type        = string
  default     = "subnet-0a001cddfb4d16a8d"
}

variable "key_name" {
  description = "Existing ec2 key-pair name"
  type        = string
  default     = "vpc-peering-key"
}

variable "ami_id" {
  description = "ubuntu AMI ID"
  type        = string
}
