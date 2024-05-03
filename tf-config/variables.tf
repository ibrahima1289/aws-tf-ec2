# Define variables

# Availability Zone
variable "ec2_az" {
  type        = string
  description = "AWS Availability Zone"
  default     = "us-east-1a"
}
# VPC Variables
variable "ec2_vpc_cidr" {
  type        = string
  description = "CIDR for VPC"
  default     = "10.0.0.0/25"
}
# Subnet Variables
variable "ec2_public_subnet_cidr" {
  type        = string
  description = "CIDR for public subnet"
  default     = "10.0.0.0/26"
}

# For VM
variable "ec2_server_type" {
  type        = string
  description = "EC2 type for Ubuntu Linux Server"
  # default     = "t3.medium"
  default = "t3.small"
}

variable "ec2_server_ami" {
  type        = string
  description = "EC2 Ubuntu AMI"
  # default     = "ami-0fc5d935ebf8bc3bc" # Ubuntu 22.04 LTS
  # default     = "ami-000b3a073fc20e415" # Ubuntu 14.04 
  # default     = "ami-0230bd60aa48260c6" # Amazon Linux
  # default     = "ami-06ced3e3790491b48" # 3cx phone
  default = "ami-00be08be98e6cb27a" # 3cx phone
}

variable "ec2_server_public_ip" {
  type        = bool
  description = "Associate public IP to EC2"
  default     = true
}
