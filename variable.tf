variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-1"
}

variable "ami_image" {
  description = "Ubuntu 20.04 LTS Image"
  type        = map(string)
  default = {
    "ap-northeast-1" = "ami-09ff2b6ef00accc2e"
    "ap-northeast-2" = "ami-0b329fb1f17558744"
  }
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "project_name" {
  description = "name of the project"
  type        = string
  default     = "wordpress"
}

variable "environment" {
  description = "name of the environment"
  type        = string
  default     = "devel"
}
