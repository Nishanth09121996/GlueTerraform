provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.aws_region

}
terraform {
    backend "s3" {
      encrypt = true
      bucket = "terraform-glue-bucket"
      
      key = "terraformbackend/terraform.tfstate"
      region = "us-east-1"
  }
}