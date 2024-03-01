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

