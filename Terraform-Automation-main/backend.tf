terraform {
  backend "s3" {
    bucket = "mydev-project-terraform-batch-26-2025-aws-logs"
    key = "eks/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
