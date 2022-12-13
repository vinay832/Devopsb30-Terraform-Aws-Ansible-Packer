terraform {
  backend "s3" {
    bucket = "devopsb30terraformstatevi"
    key    = "functions.tfstate"
    region = "us-east-1"
  }
}