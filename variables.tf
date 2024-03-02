variable "aws-region" {
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
  default     = "subnet-049602c92eb94d563"
}

variable "subnet_id2" {
  description = "ID of the existing subnet"
  type        = string
  default     = "subnet-0d30efbba75419c9e"
}

variable "vpc_id" {
  description = "ID of the existing VPC"
  type        = string
  default     = "vpc-0f20e0ed569288a27"
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