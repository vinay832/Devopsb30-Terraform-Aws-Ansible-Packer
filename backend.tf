terraform {
  backend "s3" {
    bucket = "devopsb30terraformstatevi"
    key    = "ansible.tfstate"
    region = "us-east-1"
  }
}
