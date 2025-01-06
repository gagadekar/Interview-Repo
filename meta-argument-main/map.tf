resource "aws_instance" "example" {
  ami  = "ami-0c94855ba95c574c8"
  instance_type = "t2.micro"
  tags  = var.tag_values

}



variable "tag_values" {
  description = "Map of tags to assign to the resources"
  type  = map(string)
  default  = {
  Environment = "Development"
  Team  = "DevOps"
  batch = "26"
  Class = "Young minds"
  }
}

