terraform {
  backend "s3" {
    bucket = "devopsb30terraformstatevi"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}