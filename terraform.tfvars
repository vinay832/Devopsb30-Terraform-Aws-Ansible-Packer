aws_region    = "us-east-1"
vpc_cidr      = "10.33.0.0/16"
vpc_name      = "dev30-func"
key_name      = "DeleteLater"
azs           = ["us-east-1a", "us-east-1b", "us-east-1c"]
environment   = "dev"
instance_type = "t2.micro"
public_cidrs  = ["10.33.1.0/24", "10.33.2.0/24", "10.33.3.0/24", "10.33.1.0/24", "10.33.2.0/24", "10.33.3.0/24"]
private_cidrs = ["10.33.10.0/24", "10.33.20.0/24", "10.33.30.0/24", "10.33.10.0/24", "10.33.20.0/24", "10.33.30.0/24"]
ami = {
  us-east-1 = "ami-0149b2da6ceec4bb0"
  us-east-2 = "ami-097a2df4ac947655f"
}