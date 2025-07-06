provider "aws" {
  region = "us-east-2"
}

module "sample_app_1" {
  source    = "../../modules/ec2-instance"
  name      = "sample-app-tofu-1"
  ec2_type  = "t2.micro"
}

module "sample_app_2" {
  source    = "../../modules/ec2-instance"
  name      = "sample-app-tofu-2"
  ec2_type  = "t2.small"
}
