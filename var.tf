variable "region" {
  description = "Default AWS region"
  default     = "eu-west-1"
  type        = string
}
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets."
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones."
  type        = list(string)
  default     = ["eu-west-1a", "eu-west-1b"]
}

variable "key_pair_name" {
  description = "Existing AWS Key Pair name for EC2 instances"
  type        = string
  default     = "id_rsa"
}

variable "allowed_ssh_cidr" {
  description = "CIDR blocks allowed to SSH into bastion host"
  default     = "0.0.0.0/0" # your IP
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "master_instance_count" {
  description = "Number of master nodes"
  default     = 1
}

variable "worker_instance_count" {
  description = "Number of worker nodes"
  default     = 1
}
