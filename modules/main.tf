module "vpc" {
  source = "./vpc"
  ipno = var.ipno
  ipno1 = var.ipno1
  ipno2 = var.ipno2
  ipno3 = var.ipno3
}

module "iam" {
  source = "./iam"
  rolename = var.rolename
}
module "ec2" {
    source = "./ec2"
    ami_id = var.ami_id
    ec2type = var.ec2type
}

module "s3" {
  source = "./s3"
  bucket_name  = var.bucket
}

