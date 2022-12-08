terraform {
  backend "s3" {
    bucket = "devopsb30terraformstatevi"
    key    = "dev-devopsb30.tfstate"
    region = "us-east-1"
  }
}