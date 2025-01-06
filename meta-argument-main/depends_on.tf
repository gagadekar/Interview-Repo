resource "aws_instance" "example" {
  ami           = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0123456789abcdef0"
  key_name      = "example-key"

  depends_on = [aws_security_group.example]
}


resource "aws_security_group" "example" {
  name        = "example-security-group"
  description = "Example security group"
  # Security group rules configuration...
}
