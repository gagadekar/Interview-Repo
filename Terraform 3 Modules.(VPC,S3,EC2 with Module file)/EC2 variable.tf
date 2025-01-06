variable "ami_id" {
  type    = string
  default = "ami-053b12d3152c0cc71"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "Gani0909"
}

variable "tags_id" {
  type    = string
  default = "my-instance-server"

}
