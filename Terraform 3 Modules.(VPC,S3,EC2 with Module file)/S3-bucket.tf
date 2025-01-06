resource "aws_s3_bucket" "this_bucket" {
  bucket = var.my_bucket

  versioning {
    enabled = var.versioning
  }

  tags = var.tags


}
