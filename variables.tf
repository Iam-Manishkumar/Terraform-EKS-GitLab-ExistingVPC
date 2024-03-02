variable "aws_region" {
  description = "The AWS region"
  type        = string
  default     = "us-east-1"
}

/*variable "aws-profile" {
  description = "The name of the AWS shared credentials account."
  type        = AWS-Test
}*/

variable "subnet_id1" {
  description = "ID of the existing subnet"
  type        = string
  default     = "subnet-076e7a399b1202bbc"
}

variable "subnet_id2" {
  description = "ID of the existing subnet"
  type        = string
  default     = "subnet-02813c40b3c620bb9"
}

variable "vpc_id" {
  description = "ID of the existing VPC"
  type        = string
  default     = "vpc-0fd75503e2b0b44c3"
}

variable "cluster_name" {
  description = "Name of the cluster"
  type        = string
  default     = "EKSManish-Thesis-Cluster"
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
