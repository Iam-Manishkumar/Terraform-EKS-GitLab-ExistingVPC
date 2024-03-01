variable "aws-region" {
  description = "The AWS region"
  type        = string
  default     = "eu-west-1"
}

/*variable "aws-profile" {
  description = "The name of the AWS shared credentials account."
  type        = AWS-Test
}*/

variable "subnet_id1" {
  description = "ID of the existing subnet"
  type        = string
  default     = "subnet-010cf1202660fcdb4"
}

variable "subnet_id2" {
  description = "ID of the existing subnet"
  type        = string
  default     = "subnet-0d1104e1037af6b4f"
}

variable "vpc_id" {
  description = "ID of the existing VPC"
  type        = string
  default     = "vpc-00c38da1bd64f5f78"
}

variable "sg-tag-name" {
  description = "The Name to apply to the security group"
  type        = string
  default     = "eks"
}

variable "instance-key-name" {
  description = "The name of the key to associate to the instance."
  type        = string
  default     = "Dev-Key"
}