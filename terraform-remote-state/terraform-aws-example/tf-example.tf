provider "aws" {
  region = "eu-west-2"
}

terraform {
  backend "s3" {
    bucket = "tf-remote-s3-bucket-yasco"
    key = "env/project-1/users/tf-backend-state.tfstate"
    region = "eu-west-2"
    dynamodb_table ="tf-s3-app-lock"
    encrypt = true
  }
}

resource "aws_instance" "tf-example-ec2" {
  ami           = data.aws_ami.tf_ami.id
  instance_type = local.my-instance_type
  key_name      = "yasco"
  tags = {
    Name = local.my-insatance-name
  }
}

data "aws_ami" "tf_ami" {
  most_recent = true
  owners      = ["self"]

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_s3_bucket" "tf-example-s3" {
  #bucket = var.s3-bucket-name
  acl = "private"
  #count = var.num_of_buckets
  #count = var.num_of_buckets != 0 ? var.num_of_buckets : 1
  for_each = toset(var.users)
  bucket   = "example-s3-bucket-${each.value}"
}

resource "aws_iam_user" "new-users" {
  for_each = toset(var.users)
  name     = each.value
}

output "uppercase-users" {
  value = [for user in var.users : upper(user) if length(user) > 5]
}


output "tf-example-public_ip" {
  value = aws_instance.tf-example-ec2.public_ip
}

output "tf-example-private-ip" {
  value = aws_instance.tf-example-ec2.private_ip
}

output "tf-example-s3-meta" {
  value = aws_s3_bucket.tf-example-s3
}


locals {
  my-insatance-name = "yasco locals"
  my-instance_type  = "t2.micro"
}
