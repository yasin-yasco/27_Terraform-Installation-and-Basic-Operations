module "tf-vpc" {
  source      = "../../modules/main-vpc"
  environment = "PROD"
}

output "vpc-cidr-block" {
  value = module.tf-vpc.vpc_cidr
}