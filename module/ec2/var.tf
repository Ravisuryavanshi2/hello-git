# module/ec2/variables.tf

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "instance_name" {
  description = "EC2 instance name"
  type        = string
}

variable "key" {
  description = "SSH key name"
  type        = string
}
