variable "ec2-name" {
  default     = "yasco-new-ec2"
  description = "name for new ec2"
}

variable "ec2-type" {
  default     = "t2.micro"
  description = "type for new ec2"
}

#variable "ec2-ami" {
# default     = "ami-06dc09bb8854cbde3"
#description = "ami for new ec2"
#}

variable "s3-bucket-name" {
  default     = "yasco-new-s3-bucket"
  description = "name for new s3 bucket"
}

variable "num_of_buckets" {
  default = 1
}

variable "users" {
  default = ["floki", "jenny", "yascos"]
}

