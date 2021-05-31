# sudo yum update -y

# sudo yum install -y yum-utils

#sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

# sudo yum -y install terraform

# terraform version

# terraform -help

# terraform -help plan

# terraform -install-autocomplete

# terraform init

# terraform plan

# terraform apply

# terraform show (kurduktan sonra kaynaklarin detayli bilgilerini bu sekilde alabiliriz)

# terraform state list

# terraform apply -auto-approve (to skip interactive approval of plan before applying.)

# terraform validate 

# terraform fmt (looking nice)

# terraform console  (ile istedigimiz bilgiyi kolayca gorebiliriz.)
> aws_instance.tf-example-ec2
> aws_instance.tf-example-ec2.subnet_id
> aws_instance.tf-example-ec2.private_ip
> aws_s3_bucket.tf-example-s3
> aws_s3_bucket.tf-example-s3.bucket
> aws_s3_bucket.tf-example-s3.versioning
> aws_s3_bucket.tf-example-s3.versioning[0]
> aws_s3_bucket.tf-example-s3.versioning[0].enabled
> exit

(aws_instance.tf-example-ec2.public_ip
"35.178.189.36")

# terraform graph (https://dreampuf.github.io/GraphvizOnline)

# terraform output

# terraform output -json

# terraform output tf-example-public-ip

# terraform refresh (aws de yapilan degisiklikleri refresh etmek)

# terraform state list(refresh den sonra degisiklikler gorulur)

# terraform apply -refresh=false (It displays only the changes in the terminal.)

#  `-out` command (You can use this file instead of `terraform.tfstate` file.)

# terraform plan -destroy -out=DestroyAllResources.tfplan (Saved the plan to: DestroyAllResources.tfplan)

# terraform apply "DestroyAllResources.tfplan" (-out ile ayri alanda olusturdugumuz destroy plani uyguluyoruz.)

# terraform state list (bucket ve ec2 nun silindigini gorebiliriz.)

#


















