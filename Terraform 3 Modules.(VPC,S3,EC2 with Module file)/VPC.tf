resource "aws_vpc" "my-vpc" {
  cidr_block = var.cidr_block

  tags = {
    Name = "main"
  }
}

resource "aws_internet_gateway" "my-igw" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = var.igw_tags
  }

}

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = var.public_subnet_cidr_1
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = null

  tags = {
    Name = var.public_subnet_tag_1
  }
}

resource "aws_subnet" "database_subnet_1" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = var.database_subnet_cidr_1
  availability_zone       = "ap-south-1c"
  map_public_ip_on_launch = false

  tags = {
    Name = var.database_subnet_tag_1
  }
}
#### Public Route Table
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-igw.id
  }

  tags = {
    Name = "public-rt"
  }
}
#### Associate Public Subnet with Route Table
resource "aws_route_table_association" "public_rt_assoc" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public_rt.id
}
