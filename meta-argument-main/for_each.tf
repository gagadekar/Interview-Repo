locals {
 ec2 = {
   "vm1" = { instance_type = "t2.micro", ami_id = "ami-0c7217cdde317cfec", name = "My-EC2-1"},
   "vm2" = { instance_type = "t2.small", ami_id = "ami-079db87dc4c10ac91", name = "My-EC2-2" },
   "vm3" = { instance_type = "t2.medium", ami_id = "ami-0c7217cdde317cfec", name = "My-EC2-3"}
 }
}  
 
resource "aws_instance" "my_ec2" {
 for_each = local.ec2
 instance_type = each.value.instance_type
 ami = each.value.ami_id

 tags = {
  name= "Instance-$(each.value.name)"
 }

}

