#Declare S3 backend
#https://developer.hashicorp.com/terraform/language/settings/backends/s3
terraform {
  backend "s3" {
    bucket = "terraform-s3-bucket-backend-485745"
    key    = "State-Files/terraform.tfstate"
    region = "us-east-2"
  }
}

