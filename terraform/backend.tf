terraform {
  backend "s3" {
    bucket = "terraformstate35"
    key = "terraform/backend"
    region = "eu-west-3"
  }
}