module "S3" {
  source = "./S3"
}

module "EC2-instance" {
  source = "./EC2-Instance"
}

module "VPC" {
  source = "./VPC"
}
