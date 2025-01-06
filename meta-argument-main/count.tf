resource "aws_instance" "example" {
  count         = 3
  ami           = "ami-0123456789abcdef0"  # Replace with your desired AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "Instance-${count.index + 1}"
               
  }
}

