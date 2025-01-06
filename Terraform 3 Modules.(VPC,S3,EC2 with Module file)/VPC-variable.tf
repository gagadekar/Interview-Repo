variable "cidr_block" {
  default = "172.31.0.0/16"

}
variable "igw_tags" {
  default = "internet-gateway"

}
variable "public_subnet_cidr_1" {
  default = "172.31.2.0/24"

}
variable "public_subnet_tag_1" {
  default = "public_subnet_Az_1a"

}
variable "database_subnet_cidr_1" {
  default = "172.31.5.0/24"

}
variable "database_subnet_tag_1" {
  default = "database_subnet_Az_1a"

}
